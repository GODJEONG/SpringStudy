package kr.soft.study;

public class Family {

	private String papaName, mamiName, sisterName, brotherName;

	public Family() {

	}

//	public Family(String papaName, String mamiName, String sisterName, String brotherName) {
//		this.papaName = papaName;
//		this.mamiName = mamiName;
//		this.sisterName = sisterName;
//		this.brotherName = brotherName;
//	}

	public Family(String papaName, String mamiName) {
		this.papaName = papaName;
		this.mamiName = mamiName;
	}

	public String getPapaName() {
		return papaName;
	}

	public void setPapaName(String papaName) {
		this.papaName = papaName;
	}

	public String getMamiName() {
		return mamiName;
	}

	public void setMamiName(String mamiName) {
		this.mamiName = mamiName;
	}

	public String getSisterName() {
		return sisterName;
	}

	public void setSisterName(String sisterName) {
		this.sisterName = sisterName;
	}

	public String getBrotherName() {
		return brotherName;
	}

	public void setBrotherName(String brotherName) {
		this.brotherName = brotherName;
	}

}
