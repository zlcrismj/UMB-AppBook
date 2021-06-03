package appbook;

public class MostrarPdfVO {

    /*Todo los atributos*/
    int codigopdf;
    String nombrepdf;
    String carrerapdf;
    String grupopdf;
    String specializedpdf;
    String maestropdf;
    byte[] archivopdf;

    public MostrarPdfVO() {
    }

    /*Todo los codigos get*/
    public int getCodigopdf() {
        return codigopdf;
    }

    public String getNombrepdf() {
        return nombrepdf;
    }
    
    public String getCarrerapdf() {
        return carrerapdf;
    }
    
    public String getGrupopdf() {
        return grupopdf;
    }
    
    public String getSpecializedpdf() {
        return specializedpdf;
    }

    public String getMaestropdf() {
        return maestropdf;
    }
    
    public byte[] getArchivopdf() {
        return archivopdf;
    }


    /*Todo los codigos set*/
    public void setCodigopdf(int codigopdf) {
        this.codigopdf = codigopdf;
    }

    public void setNombrepdf(String nombrepdf) {
        this.nombrepdf = nombrepdf;
    }

    public void setCarrerapdf(String carrerapdf) {
        this.carrerapdf = carrerapdf;
    }
    
    public void setGrupopdf(String grupopdf) {
        this.grupopdf = grupopdf;
    }
    
    public void setSpecializedpdf(String specializedpdf) {
        this.specializedpdf = specializedpdf;
    }
    
    public void setMaestropdf(String maestropdf) {
        this.maestropdf = maestropdf;
    }
    
    public void setArchivopdf(byte[] archivopdf) {
        this.archivopdf = archivopdf;
    }

}
