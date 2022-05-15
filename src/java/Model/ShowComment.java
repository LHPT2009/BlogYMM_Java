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
public class ShowComment {
    private String HoTen;
    private String NoiDung;
    private Date NgaytaoBL;
    
    public ShowComment(){}

    public ShowComment(String HoTen, String NoiDung, Date NgaytaoBL) {
        this.HoTen = HoTen;
        this.NoiDung = NoiDung;
        this.NgaytaoBL = NgaytaoBL;
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

    public Date getNgaytaoBL() {
        return NgaytaoBL;
    }

    public void setNgaytaoBL(Date NgaytaoBL) {
        this.NgaytaoBL = NgaytaoBL;
    }

    @Override
    public String toString() {
        return "ShowComment{" + "HoTen=" + HoTen + ", NoiDung=" + NoiDung + ", NgaytaoBL=" + NgaytaoBL + '}';
    }
    
    
    
}
