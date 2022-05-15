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
public class Like {
    private int MaTaiKhoan;
    private String MaBaiViet;

    public Like(int MaTaiKhoan, String MaBaiViet) {
        this.MaTaiKhoan = MaTaiKhoan;
        this.MaBaiViet = MaBaiViet;
    }

    public int getMaTaiKhoan() {
        return MaTaiKhoan;
    }

    public void setMaTaiKhoan(int MaTaiKhoan) {
        this.MaTaiKhoan = MaTaiKhoan;
    }

    public String getMaBaiViet() {
        return MaBaiViet;
    }

    public void setMaBaiViet(String MaBaiViet) {
        this.MaBaiViet = MaBaiViet;
    }

    @Override
    public String toString() {
        return "Like{" + "MaTaiKhoan=" + MaTaiKhoan + ", MaBaiViet=" + MaBaiViet + '}';
    }
    
    
}
