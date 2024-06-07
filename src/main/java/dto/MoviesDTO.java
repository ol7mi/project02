package dto;

import java.sql.Timestamp;

public class MoviesDTO {
	private int seq;
	private String title;
	private String ganre;
	private Timestamp write_date;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGanre() {
		return ganre;
	}
	public void setGanre(String ganre) {
		this.ganre = ganre;
	}
	public Timestamp getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	public MoviesDTO(int seq, String title, String ganre, Timestamp write_date) {
		super();
		this.seq = seq;
		this.title = title;
		this.ganre = ganre;
		this.write_date = write_date;
	}
	public MoviesDTO() {
		super();
	}
	
	
}
