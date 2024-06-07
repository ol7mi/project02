package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.MoviesDTO;

public class MoviesDAO {
	private static MoviesDAO instance;
	public static MoviesDAO  getInstance() {
		if(instance==null) instance=new MoviesDAO();
		
		return instance;
	}
	private MoviesDAO() {}
	
	private Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource db = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		return db.getConnection();
	}
	
	public void insert(MoviesDTO dto) {
		String sql="insert into movies values(movies_seq.nextval,?,?,sysdate)";
		try (Connection con=this.getConnection();
				PreparedStatement pstat=con.prepareStatement(sql)){
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getGenre());
			pstat.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public List<MoviesDTO> selectAll(){
		List<MoviesDTO> list= new ArrayList();
		String sql="select *from movies";
		try (Connection con=this.getConnection();
				PreparedStatement pstat=con.prepareStatement(sql);
				ResultSet rs=pstat.executeQuery()){

			while(rs.next()) {
				int seq=rs.getInt(1);
				String title=rs.getString(2);
				String genre=rs.getString(3);
				Timestamp write_date=rs.getTimestamp(4);
				list.add(new MoviesDTO(seq,title,genre,write_date));
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
			
		return list;
	}
	public void delete(int seq) {
		String sql="delete from movies where seq=?";
		try (Connection con=this.getConnection();
				PreparedStatement pstat=con.prepareStatement(sql)){
			pstat.setInt(1, seq);
			pstat.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void update(MoviesDTO dto) {
		String sql="update movies set title=?, genre=? where seq=?";
		try (Connection con=this.getConnection();
				PreparedStatement pstat=con.prepareStatement(sql)){
			pstat.setString(1, dto.getTitle());
			pstat.setString(2, dto.getGenre());
			pstat.setInt(1, dto.getSeq());
			pstat.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
