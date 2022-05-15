/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

public class ShowAdminComment {
    private int MaBaiViet;
    private String TenBaiViet;
    private int MaTaiKhoan;
    private String HoTen;
    private String NoiDung;
    private int MaBinhLuan;
    
    public ShowAdminComment(){}

    public ShowAdminComment(int MaBaiViet, String TenBaiViet, int MaTaiKhoan, String HoTen, String NoiDung, int MaBinhLuan) {
        this.MaBaiViet = MaBaiViet;
        this.TenBaiViet = TenBaiViet;
        this.MaTaiKhoan = MaTaiKhoan;
        this.HoTen = HoTen;
        this.NoiDung = NoiDung;
        this.MaBinhLuan = MaBinhLuan;
    }

    public int getMaBaiViet() {
        return MaBaiViet;
    }

    public void setMaBaiViet(int MaBaiViet) {
        this.MaBaiViet = MaBaiViet;
    }

    public String getTenBaiViet() {
        return TenBaiViet;
    }

    public void setTenBaiViet(String TenBaiViet) {
        this.TenBaiViet = TenBaiViet;
    }

    public int getMaTaiKhoan() {
        return MaTaiKhoan;
    }

    public void setMaTaiKhoan(int MaTaiKhoan) {
        this.MaTaiKhoan = MaTaiKhoan;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }

    public int getMaBinhLuan() {
        return MaBinhLuan;
    }

    public void setMaBinhLuan(int MaBinhLuan) {
        this.MaBinhLuan = MaBinhLuan;
    }

    @Override
    public String toString() {
        return "ShowAdminComment{" + "MaBaiViet=" + MaBaiViet + ", TenBaiViet=" + TenBaiViet + ", MaTaiKhoan=" + MaTaiKhoan + ", HoTen=" + HoTen + ", NoiDung=" + NoiDung + ", MaBinhLuan=" + MaBinhLuan + '}';
    }
    
}
