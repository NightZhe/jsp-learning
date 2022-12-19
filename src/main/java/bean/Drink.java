package bean;

public class Drink {
	protected int did;
	protected String dname;
	protected int dcount;
	protected int dprice;

	public Drink() {
		super();
	}

	public Drink(int did, String dname, int dcount, int dprice) {
		super();
		this.did = did;
		this.dname = dname;
		this.dcount = dcount;
		this.dprice = dprice;
	}

	public Drink(String dname, int dcount, int dprice) {
		super();
		this.dname = dname;
		this.dcount = dcount;
		this.dprice = dprice;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public int getDcount() {
		return dcount;
	}

	public void setDcount(int dcount) {
		this.dcount = dcount;
	}

	public int getDprice() {
		return dprice;
	}

	public void setDprice(int dprice) {
		this.dprice = dprice;
	}

}
