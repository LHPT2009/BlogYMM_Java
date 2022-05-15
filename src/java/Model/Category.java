package Model;

public class Category {

    private int MaLoai;
    private String TenLoai;

    public Category() {
    }

    public int getMaLoai() {
        return MaLoai;
    }

    public void setMaLoai(int MaLoai) {
        this.MaLoai = MaLoai;
    }
    
    public String getTenLoai() {
        return TenLoai;
    }

    public void setTenLoai(String TenLoai) {
        this.TenLoai = TenLoai;
    }

    public Category(int MaLoai, String TenLoai) {
        this.MaLoai = MaLoai;
        this.TenLoai = TenLoai;
    }

    @Override
    public String toString() {
        return "Category{" + "MaLoai=" + MaLoai + ", TenLoai=" + TenLoai + '}';
    }
}
