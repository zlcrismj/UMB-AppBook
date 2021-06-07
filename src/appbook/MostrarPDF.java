package appbook;


import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MostrarPDF {

    /*Metodo listar*/
    public ArrayList<MostrarPdfVO> Listar_PdfVO() {
        ArrayList<MostrarPdfVO> list = new ArrayList<MostrarPdfVO>();
        Conectar conec = new Conectar();
        String sql = "SELECT * FROM archivos;";
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                MostrarPdfVO vo = new MostrarPdfVO();
                vo.setCodigopdf(rs.getInt(1));
                vo.setNombrepdf(rs.getString(2));
                vo.setCarrerapdf(rs.getString(3));
                vo.setGrupopdf(rs.getString(4));
                vo.setSpecializedpdf(rs.getString(5));
                vo.setMaestropdf(rs.getString(6));
                vo.setArchivopdf(rs.getBytes(7));
                list.add(vo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                rs.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
        return list;
    }

  
    
    /*Metodo agregar*/
    public void Agregar_PdfVO(MostrarPdfVO vo) {
        Conectar conec = new Conectar();
        String sql = "INSERT INTO archivos (codigo_pdf, nombre_pdf, carrera_pdf, grupo_pdf, specialized, maestro_pdf, archivo_pdf) VALUES(?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, vo.getCodigopdf());
            ps.setString(2, vo.getNombrepdf());
            ps.setString(3, vo.getCarrerapdf());
            ps.setString(4, vo.getGrupopdf());
            ps.setString(5, vo.getSpecializedpdf());
            ps.setString(6, vo.getMaestropdf());
            ps.setBytes(7, vo.getArchivopdf());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }


    /*Metodo Modificar*/
    public void Modificar_PdfVO(MostrarPdfVO vo) {
        Conectar conec = new Conectar();
        String sql = "UPDATE archivos SET nombre_pdf = ?, carrera_pdf = ?, grupo_pdf = ?, specialized = ?, maestro_pdf = ?, archivo_pdf  = ? WHERE codigo_pdf = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            
            ps.setString(1, vo.getNombrepdf());
            ps.setString(2, vo.getCarrerapdf());
            ps.setString(3, vo.getGrupopdf());
            ps.setString(4, vo.getSpecializedpdf());
            ps.setString(5, vo.getMaestropdf());
            ps.setBytes(6, vo.getArchivopdf());
            ps.setInt(7, vo.getCodigopdf());
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }

    public void Modificar_PdfVO2(MostrarPdfVO vo) {
        Conectar conec = new Conectar();
        String sql = "UPDATE archivos SET nombre_pdf = ?, carrera_pdf = ?, grupo_pdf = ?, specialized = ?, maestro_pdf = ?, archivo_pdf  = ? WHERE codigo_pdf = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            
            ps.setString(1, vo.getNombrepdf());
            ps.setString(2, vo.getCarrerapdf());
            ps.setString(3, vo.getGrupopdf());
            ps.setString(4, vo.getSpecializedpdf());
            ps.setString(5, vo.getMaestropdf());
            ps.setBytes(6, vo.getArchivopdf());
            ps.setInt(7, vo.getCodigopdf());
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }

    /*Metodo Eliminar*/
    public void Eliminar_PdfVO(MostrarPdfVO vo) {
        Conectar conec = new Conectar();
        String sql = "DELETE FROM archivos WHERE codigo_pdf = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, vo.getCodigopdf());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }

    //Permite mostrar PDF contenido en la base de datos
    public void ejecutar_archivoPDF(int id) {

        Conectar cn = new Conectar();
        PreparedStatement ps = null;
        ResultSet rs = null;
        byte[] b = null;

        try {
            ps = cn.getConnection().prepareStatement("SELECT archivo_pdf FROM archivos WHERE codigo_pdf = ?;");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                b = rs.getBytes(1);
            }
            InputStream bos = new ByteArrayInputStream(b);

            int tamanoInput = bos.available();
            byte[] datosPDF = new byte[tamanoInput];
            bos.read(datosPDF, 0, tamanoInput);

            OutputStream out = new FileOutputStream("File.pdf");
            out.write(datosPDF);

            //abrir archivo
            out.close();
            bos.close();
            ps.close();
            rs.close();
            cn.desconectar();

        } catch (IOException | NumberFormatException | SQLException ex) {
            System.out.println("Error Opening PDF File " + ex.getMessage());
        }
    }

}
