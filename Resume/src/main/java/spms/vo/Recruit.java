package spms.vo;


public class Recruit {
	protected int       rno;
	protected String 	company;
	protected String 	job;
	protected String 	question;
	protected String 	img;
	protected String   	startedDate;
	protected String	endedDate;
	public int getRno() {
		return rno;
	}
	public Recruit setRno(int rno) {
		this.rno = rno;
		return this;
	}
	public String getCompany() {
		return company;
	}
	public Recruit setCompany(String company) {
		this.company = company;
		return this;
	}
	public String getJob() {
		return job;
	}
	public Recruit setJob(String job) {
		this.job = job;
		return this;
	}
	public String getQuestion() {
		return question;
	}
	public Recruit setQuestion(String question) {
		this.question = question;
		return this;
	}
	public String getImg() {
		return img;
	}
	public Recruit setImg(String img) {
		this.img = img;
		return this;
	}
	public String getStartedDate() {
		return startedDate;
	}
	public Recruit setStartedDate(String startedDate) {
		this.startedDate = startedDate;
		return this;
	}
	public String getEndedDate() {
		return endedDate;
	}
	public Recruit setEndedDate(String endedDate) {
		this.endedDate = endedDate;
		return this;
	}
}
