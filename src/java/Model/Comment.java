/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author zpc
 */
public class Comment {
    private int MaBinhLuan;
    private int MaTaiKhoan;
    private int MaBaiViet;
    private String NoiDung;
    private Date NgayTaoBL;
    
    public Comment (){}

    public Comment(int MaBinhLuan, int MaTaiKhoan, int MaBaiViet, String NoiDung, Date NgayTaoBL) {
        this.MaBinhLuan = MaBinhLuan;
        this.MaTaiKhoan = MaTaiKhoan;
        this.MaBaiViet = MaBaiViet;
        this.NoiDung = NoiDung;
        this.NgayTaoBL = NgayTaoBL;
    }

    public int getMaBinhLuan() {
        return MaBinhLuan;
    }

    public void setMaBinhLuan(int MaBinhLuan) {
        this.MaBinhLuan = MaBinhLuan;
    }

    public int getMaTaiKhoan() {
        return MaTaiKhoan;
    }

    public void setMaTaiKhoan(int MaTaiKhoan) {
        this.MaTaiKhoan = MaTaiKhoan;
    }

    public int getMaBaiViet() {
        return MaBaiViet;
    }

    public void setMaBaiViet(int MaBaiViet) {
        this.MaBaiViet = MaBaiViet;
    }

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }

    public Date getNgayTaoBL() {
        return NgayTaoBL;
    }

    public void setNgayTaoBL(Date NgayTaoBL) {
        this.NgayTaoBL = NgayTaoBL;
    }

    @Override
    public String toString() {
        return "Comment{" + "MaBinhLuan=" + MaBinhLuan + ", MaTaiKhoan=" + MaTaiKhoan + ", MaBaiViet=" + MaBaiViet + ", NoiDung=" + NoiDung + ", NgayTaoBL=" + NgayTaoBL + '}';
    }


    
}
