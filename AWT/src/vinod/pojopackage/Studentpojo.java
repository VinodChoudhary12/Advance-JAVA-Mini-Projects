package vinod.pojopackage;

public class Studentpojo {

    private String fName, name, fname, mname, pswd, gender, Branch, Sem, course, dob, mail, sreetadd, usrname, conpswd, capcha, mob,user;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    int age;

    public Studentpojo(String fName, String lname, String fname2, String mname, String pswd, String gender,
            String branch, String sem, String course, String dob, String mail, String sreetadd, String usrname,
            String conpswd, String capcha, String mob, int age) {
        this.fName = fName;
        this.name = name;
        fname = fname2;
        this.mname = mname;
        this.pswd = pswd;
        this.gender = gender;
        Branch = branch;
        Sem = sem;
        this.course = course;
        this.dob = dob;
        this.mail = mail;
        this.sreetadd = sreetadd;
        this.usrname = usrname;
        this.conpswd = conpswd;
        this.capcha = capcha;
        this.mob = mob;
        this.age = age;
    }

    public Studentpojo() {
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getname() {
        return name;
    }

    public void setname(String lname) {
        this.name = lname;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getPswd() {
        return pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBranch() {
        return Branch;
    }

    public void setBranch(String branch) {
        Branch = branch;
    }

    public String getSem() {
        return Sem;
    }

    public void setSem(String sem) {
        Sem = sem;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getSreetadd() {
        return sreetadd;
    }

    public void setSreetadd(String sreetadd) {
        this.sreetadd = sreetadd;
    }

    public String getUsrname() {
        return usrname;
    }

    public void setUsrname(String usrname) {
        this.usrname = usrname;
    }

    public String getConpswd() {
        return conpswd;
    }

    public void setConpswd(String conpswd) {
        this.conpswd = conpswd;
    }

    public String getCapcha() {
        return capcha;
    }

    public void setCapcha(String capcha) {
        this.capcha = capcha;
    }

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
