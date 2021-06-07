package appbook;



import java.awt.Image;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import java.util.ArrayList;
import javax.swing.ImageIcon;
import javax.swing.JButton;

public class Tabla_PdfVO {

    MostrarPDF dao = null;

    public void visualizar_PdfVO(JTable tabla) {
        tabla.setDefaultRenderer(Object.class, new imgTabla());
        DefaultTableModel dt = new DefaultTableModel() {
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        dt.addColumn("ID");
        dt.addColumn("NAME");
        dt.addColumn("DEGREE");
        dt.addColumn("GROUP");
        dt.addColumn("SPECIALIZED");
        dt.addColumn("TECHER");
        dt.addColumn("FILE");

        ImageIcon icono = null;
        if (get_Image("/Resources/32pdf.png") != null) {
            icono = new ImageIcon(get_Image("/Resources/32pdf.png"));
        }

        dao = new MostrarPDF();
        MostrarPdfVO vo = new MostrarPdfVO();
        ArrayList<MostrarPdfVO> list = dao.Listar_PdfVO();

        if (list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                Object fila[] = new Object[7];
                vo = list.get(i);
                fila[0] = vo.getCodigopdf();
                fila[1] = vo.getNombrepdf();
                fila[2] = vo.getCarrerapdf();
                fila[3] = vo.getGrupopdf();
                fila[4] = vo.getSpecializedpdf();
                fila[5] = vo.getMaestropdf();
                if (vo.getArchivopdf() != null) {
                    fila[6] = new JButton(icono);
                } else {
                    fila[6] = new JButton("Empty");
                }

                dt.addRow(fila);
            }
            tabla.setModel(dt);
            tabla.setRowHeight(32);
        }
    }

    public Image get_Image(String ruta) {
        try {
            ImageIcon imageIcon = new ImageIcon(getClass().getResource(ruta));
            Image mainIcon = imageIcon.getImage();
            return mainIcon;
        } catch (Exception e) {
        }
        return null;
    }
}
