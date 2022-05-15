package DAO;

import Connect.DBConnect;
import Model.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //The loai
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from LoaiBaiViet\n"
                + "order by TenLoai";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(
                        rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //Bai viet
    public List<Posts> getAllPosts() {
        List<Posts> list = new ArrayList<>();
        String query = "select *\n"
                + "from BaiViet\n"
                + "order by MaBaiViet desc";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Posts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Posts> getPostByCID(String cid) {
        List<Posts> list = new ArrayList<>();
        String query = "SELECT * FROM BaiViet WHERE MaLoai = ?\n"
                + "order by MaBaiViet desc";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Posts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Posts getPostByID(String id) {
        String query = "select * from BaiViet\n"
                + "where MaBaiViet = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Posts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //Dang nhap
    public Account Signin(String user, String pass, String name, String role) {
        String query = "select * from TaiKhoan\n"
                + "where TenDangNhap = ?\n"
                + "and MatKhau = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String query = "select * from TaiKhoan\n"
                + "where TenDangNhap = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account CheckRePass1(String Email) {
        String query = "select * from TaiKhoan where Email = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, Email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account getAccountByEmail(String Email) {
        String query = "select * from TaiKhoan where Email =?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, Email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void editRePass2(String MatKhau, String Email) {
        String query = "update TaiKhoan set MatKhau=? where Email=?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, MatKhau);
            ps.setString(2, Email);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //Dang ki
    public void signUp(String user, String pass, String name, String email, int role) {
        String query = "insert into TaiKhoan\n"
                + "values(?,?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, email);
            ps.setInt(5, role);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //Yeu thich
    public void like(int uid, String aid) {
        String query = "insert into BaiYeuThich values (?,?)";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, uid);
            ps.setString(2, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Posts> getPostLikeByCID(int cid) {
        List<Posts> list = new ArrayList<>();
        String query = "select a.* from BaiYeuThich b, BaiViet a where a.MaBaiViet=b.MaBaiViet and b.MaTaiKhoan=?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Posts(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteLike(int MaTaiKhoan, String MaBaiViet) {
        String query = "delete from BaiYeuThich where MaTaiKhoan =? and MaBaiViet = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, MaTaiKhoan);
            ps.setString(2, MaBaiViet);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Like CheckLike(int MaTaiKhoan, String MaBaiViet) {
        String query = "select * from BaiYeuThich where MaTaiKhoan = ? and MaBaiViet = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, MaTaiKhoan);
            ps.setString(2, MaBaiViet);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Like(
                        rs.getInt(1),
                        rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //Quan li
    public void deletePost(String pid) {
        String query = "delete from BaiViet\n"
                + "where MaBaiViet = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertPost(String TenBaiViet, String NoiDung, Date Ngaytao, String HinhAnh, String video, String MaLoai, int MaTaiKhoan, String Khac) {
        String query = "insert into BaiViet values (?,?,?,?,?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, TenBaiViet);
            ps.setString(2, NoiDung);
            ps.setDate(3, Ngaytao);
            ps.setString(4, HinhAnh);
            ps.setString(5, video);
            ps.setString(6, MaLoai);
            ps.setInt(7, MaTaiKhoan);
            ps.setString(8, Khac);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertCategory(String TenBaiViet) {
        String query = "insert into LoaiBaiViet values (?)";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, TenBaiViet);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertAccount(String TenDangNhap, String MatKhau, String HoTen, String Email, int LoaiTaiKhoan) {
        String query = "insert into TaiKhoan values (?,?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, TenDangNhap);
            ps.setString(2, MatKhau);
            ps.setString(3, HoTen);
            ps.setString(4, Email);
            ps.setInt(5, LoaiTaiKhoan);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertHot(String TenNoiBat, String HinhAnh, String NoiDung, String Video, String Khac) {
        String query = "insert into NoiBat values (?,?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, TenNoiBat);
            ps.setString(2, HinhAnh);
            ps.setString(3, NoiDung);
            ps.setString(4, Video);
            ps.setString(5, Khac);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteProduct(String pid) {
        String query = "delete from BaiViet where MaBaiViet = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCategory(String pid) {
        String query = "delete from LoaiBaiViet where MaLoai = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteAccount(String id1, String id2, String id3, String id4) {
        String query = "delete from BaiYeuThich where MaTaiKhoan = ?\n"
                + "delete from BaiViet where MaTaiKhoan = ?\n"
                + "delete from BinhLuan where MaTaiKhoan = ?\n"
                + "delete from TaiKhoan where MaTaiKhoan = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id1);
            ps.setString(2, id2);
            ps.setString(3, id3);
            ps.setString(4, id4);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteHot(String pid) {
        String query = "delete from NoiBat where MaNoiBat = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteContact(String pid) {
        String query = "delete from LienHe where MaLienHe = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteComment(String pid) {
        String query = "delete from BinhLuan where MaBinhLuan = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editPost(String TenBaiViet, String NoiDung, String NgayTao,
            String HinhAnh, String Video, String MaLoai, String MaTaiKhoan, String Khac, String MaBaiViet) {
        String query = "update BaiViet set TenBaiViet = ?, NoiDung =?,NgayTao=?,HinhAnh=?,Video=?,MaLoai=?,MaTaiKhoan=?,Khac=? where MaBaiViet = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, TenBaiViet);
            ps.setString(2, NoiDung);
            ps.setString(3, NgayTao);
            ps.setString(4, HinhAnh);
            ps.setString(5, Video);
            ps.setString(6, MaLoai);
            ps.setString(7, MaTaiKhoan);
            ps.setString(8, Khac);
            ps.setString(9, MaBaiViet);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editAdmin(String TenDangNhap, String MatKhau, String HoTen, String Email, int LoaiTaiKhoan, String MaTaiKhoan) {
        String query = "update TaiKhoan set TenDangNhap=?,MatKhau=?,HoTen=?,Email=?,LoaiTaiKhoan=? where MaTaiKhoan = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, TenDangNhap);
            ps.setString(2, MatKhau);
            ps.setString(3, HoTen);
            ps.setString(4, Email);
            ps.setInt(5, LoaiTaiKhoan);
            ps.setString(6, MaTaiKhoan);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editCategory(String TenLoai, String MaLoai) {
        String query = "update LoaiBaiViet set TenLoai= ? where MaLoai = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, TenLoai);
            ps.setString(2, MaLoai);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editHot(String TenNoiBat, String HinhAnh, String NoiDung, String Video, String Khac, String MaNoiBat) {
        String query = "update NoiBat set TenNoiBat=?,HinhAnh=?,NoiDung=?,Video=?,Khac=? where MaNoiBat = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, TenNoiBat);
            ps.setString(2, HinhAnh);
            ps.setString(3, NoiDung);
            ps.setString(4, Video);
            ps.setString(5, Khac);
            ps.setString(6, MaNoiBat);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAdminByMaTaiKhoan(String id) {
        String query = "select * from TaiKhoan where MaTaiKhoan=?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Category getCategoryByMaLoai(String id) {
        String query = "select * from LoaiBaiViet where MaLoai = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(
                        rs.getInt(1),
                        rs.getString(2)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Hot getHotByMaNoiBat(String id) {
        String query = "select * from NoiBat where MaNoiBat=?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Hot(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Posts getPostByMaBaiViet(String id) {
        String query = "select * from BaiViet where MaBaiViet = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Posts(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Account> getAllAccountAdmin() {
        List<Account> list = new ArrayList<>();
        String query = "select * from TaiKhoan where LoaiTaiKhoan = 1";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Contact> getAllContact() {
        List<Contact> list = new ArrayList<>();
        String query = "Select * from LienHe";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Contact(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Account> getAllAccountUsers() {
        List<Account> list = new ArrayList<>();
        String query = "select * from TaiKhoan where LoaiTaiKhoan = 0";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //Phan trang
    public List<Posts> pageList(int index) {
        List<Posts> list = new ArrayList<>();
        String query = "select * from BaiViet bv join TaiKhoan tk\n"
                + "on bv.MaTaiKhoan = tk.MaTaiKhoan\n"
                + "order by MaBaiViet desc\n"
                + "offset ? rows fetch next 3 rows only";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index * 3 - 3));
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Posts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Posts> pageListC(int index, String maloai) {
        List<Posts> list = new ArrayList<>();
        String query = "select * from BaiViet bv join TaiKhoan tk \n"
                + "on bv.MaTaiKhoan = tk.MaTaiKhoan\n"
                + "where MaLoai = ?\n"
                + "order by MaBaiViet desc\n"
                + "offset ? rows fetch next 3 rows only";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, maloai);
            ps.setInt(2, (index * 3 - 3));
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Posts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Posts> pageListADPost(int index) {
        List<Posts> list = new ArrayList<>();
        String query = "select * from BaiViet bv join TaiKhoan tk\n"
                + "on bv.MaTaiKhoan = tk.MaTaiKhoan\n"
                + "order by MaBaiViet desc\n"
                + "offset ? rows fetch next 10 rows only";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index * 10 - 10));
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Posts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Contact> pageListADContact(int index) {
        List<Contact> list = new ArrayList<>();
        String query = "select * from LienHe\n"
                + "order by MaLienHe desc\n"
                + "offset 1 rows fetch next 10 rows only";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index * 10 - 10));
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Contact(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<ShowAdminComment> pageListADComment(int index) {
        List<ShowAdminComment> list = new ArrayList<>();
        String query = "select * from BinhLuan bv join TaiKhoan tk\n"
                + "on bv.MaTaiKhoan = tk.MaTaiKhoan\n"
                + "order by MaBinhLuan desc\n"
                + "offset ? rows fetch next 10 rows only";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index * 10 - 10));
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ShowAdminComment(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int totalPage() {
        int total = 0;
        String query = "select count(*)\n"
                + "from BaiViet";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int totalA = rs.getInt(1);
                total = totalA / 3;
                if (totalA % 3 != 0) {
                    total++;
                }
            }
        } catch (Exception e) {
        }
        return total;
    }

    public int totalPageC(String maloai) {
        int total = 0;
        String query = "select count(*) from BaiViet\n"
                + "where MaLoai = ?";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, maloai);
            rs = ps.executeQuery();
            while (rs.next()) {
                int totalA = rs.getInt(1);
                total = totalA / 3;
                if (totalA % 3 != 0) {
                    total++;
                }
            }
        } catch (Exception e) {
        }
        return total;
    }

    public int totalPageADPost() {
        int total = 0;
        String query = "select count(*)\n"
                + "from BaiViet";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int totalA = rs.getInt(1);
                total = totalA / 10;
                if (totalA % 10 != 0) {
                    total++;
                }
            }
        } catch (Exception e) {
        }
        return total;
    }

    public int totalPageADContact() {
        int total = 0;
        String query = "select count(*)\n"
                + "from LienHe";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int totalA = rs.getInt(1);
                total = totalA / 10;
                if (totalA % 10 != 0) {
                    total++;
                }
            }
        } catch (Exception e) {
        }
        return total;
    }
    
    public int totalPageADCmt() {
        int total = 0;
        String query = "select count(*)\n"
                + "from BinhLuan";
        try {
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int totalA = rs.getInt(1);
                total = totalA / 10;
                if (totalA % 10 != 0) {
                    total++;
                }
            }
        } catch (Exception e) {
        }
        return total;
    }

    //Binh luan
    public List<Comment> getCommentfull() {
        List<Comment> list = new ArrayList<>();
        String query = "select a.* from BinhLuan a,TaiKhoan b where a.MaTaiKhoan=b.MaTaiKhoan";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDate(5)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<ShowAdminComment> getCommentAdmin() {
        List<ShowAdminComment> list = new ArrayList<>();
        String query = "select c.MaBaiViet, c.TenBaiViet,b.MaTaiKhoan,b.HoTen,a.NoiDung, MaBinhLuan \n"
                + "from BinhLuan a, TaiKhoan b,BaiViet c \n"
                + "where a.MaTaiKhoan=b.MaTaiKhoan and c.MaBaiViet=a.MaBaiViet\n"
                + "order by MaBinhLuan desc";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ShowAdminComment(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<ShowComment> getCommentByPID(String cid) {
        List<ShowComment> list = new ArrayList<>();
        String query = "select b.HoTen,a.NoiDung,a.NgayTaoBL from BinhLuan a,TaiKhoan b where a.MaTaiKhoan=b.MaTaiKhoan and a.MaBaiViet = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ShowComment(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getDate(3)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void insertcomment(int uID, String id, String NoiDung, Date NgayTaoBL) {
        String query = "insert into BinhLuan values (?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, uID);
            ps.setString(2, id);
            ps.setString(3, NoiDung);
            ps.setDate(4, NgayTaoBL);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //Lien he
    public void insertContact(String Ten, String Email, String ChuDe, String NoiDung) {
        String query = "insert into LienHe values (?,?,?,?)";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, Ten);
            ps.setString(2, Email);
            ps.setString(3, ChuDe);
            ps.setString(4, NoiDung);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //Tim kiem
    public List<Posts> searchByName(String txtSearch) {
        List<Posts> list = new ArrayList<>();
        String query = "select * from BaiViet\n"
                + "where [TenBaiViet] like ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Posts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //Noi bat
    public Hot getHotLeft() {
        String query = "select top 1 * from NoiBat order by MaNoiBat desc";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Hot(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Hot> getHotRight() {
        List<Hot> list = new ArrayList<>();
        String query = "select * from (SELECT top 5 MaNoiBat,TenNoiBat,NgayDang, HinhAnh , NoiDung , Video ,Khac\n"
                + "FROM NoiBat\n"
                + "order by MaNoiBat desc) x\n"
                + "EXCEPT\n"
                + "select * from (SELECT top 1 MaNoiBat,TenNoiBat,NgayDang, HinhAnh , NoiDung , Video ,Khac\n"
                + "FROM NoiBat\n"
                + "order by MaNoiBat desc) y";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Hot(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Hot> getAllHot() {
        List<Hot> list = new ArrayList<>();
        String query = "select * from NoiBat";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Hot(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Hot getHotByID(String id) {
        String query = "select * from NoiBat\n"
                + "where MaNoiBat = ?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Hot(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //Tai khoan
    public Account getAccountByID(String id) {
        String query = "select * from TaiKhoan where MaTaiKhoan =?";
        try {
            conn = new DBConnect().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();

        System.out.println(dao.totalPageC("19"));
//        for (Posts o : list) {
//            System.out.println(o);
//        }
    }
}
