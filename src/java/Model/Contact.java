/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author zpc
 */
public class Contact {
    private int MaLienHe;
    private String Ten;
    private String Email;
    private String ChuDe;
    private String NoiDung;

    public Contact(){}
    public Contact(int MaLienHe, String Ten, String Email, String ChuDe, String NoiDung) {
        this.MaLienHe = MaLienHe;
        this.Ten = Ten;
        this.Email = Email;
        this.ChuDe = ChuDe;
        this.NoiDung = NoiDung;
    }

    public int getMaLienHe() {
        return MaLienHe;
    }

    public void setMaLienHe(int MaLienHe) {
        this.MaLienHe = MaLienHe;
    }

    public String getTen() {
        return Ten;
    }

    public void setTen(String Ten) {
        this.Ten = Ten;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getChuDe() {
        return ChuDe;
    }

    public void setChuDe(String ChuDe) {
        this.ChuDe = ChuDe;
    }

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }

    @Override
    public String toString() {
        return "Contact{" + "MaLienHe=" + MaLienHe + ", Ten=" + Ten + ", Email=" + Email + ", ChuDe=" + ChuDe + ", NoiDung=" + NoiDung + '}';
    }
    
}
