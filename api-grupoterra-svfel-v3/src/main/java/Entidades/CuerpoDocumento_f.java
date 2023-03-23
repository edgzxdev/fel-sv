package Entidades;

import java.io.Serializable;
import java.util.List;

public class CuerpoDocumento_f implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private Number numItem;
    private Number tipoItem;
    private String numeroDocumento;
    private Number cantidad;
    private String codigo;
    private String codTributo;
    private Number uniMedida;
    private String descripcion;
    private Number precioUni;
    private Number montoDescu;
    private Number ventaNoSuj;
    private Number ventaExenta;
    private Number ventaGravada;
    private List<String> tributos;
    private Number psv;
    private Number noGravado;
    private Number ivaItem;

    public CuerpoDocumento_f(Number numItem, Number tipoItem, String numeroDocumento, Number cantidad, String codigo, String codTributo, Number uniMedida, String descripcion, Number precioUni, Number montoDescu, Number ventaNoSuj, Number ventaExenta, Number ventaGravada, List<String> tributos, Number psv, Number noGravado, Number ivaItem) {
        this.numItem = numItem;
        this.tipoItem = tipoItem;
        this.numeroDocumento = numeroDocumento;
        this.cantidad = cantidad;
        this.codigo = codigo;
        this.codTributo = codTributo;
        this.uniMedida = uniMedida;
        this.descripcion = descripcion;
        this.precioUni = precioUni;
        this.montoDescu = montoDescu;
        this.ventaNoSuj = ventaNoSuj;
        this.ventaExenta = ventaExenta;
        this.ventaGravada = ventaGravada;
        this.tributos = tributos;
        this.psv = psv;
        this.noGravado = noGravado;
        this.ivaItem = ivaItem;
    }

    public CuerpoDocumento_f() {
    }

    public Number getNumItem() {
        return numItem;
    }

    public void setNumItem(Number numItem) {
        this.numItem = numItem;
    }

    public Number getTipoItem() {
        return tipoItem;
    }

    public void setTipoItem(Number tipoItem) {
        this.tipoItem = tipoItem;
    }

    public String getNumeroDocumento() {
        return numeroDocumento;
    }

    public void setNumeroDocumento(String numeroDocumento) {
        this.numeroDocumento = numeroDocumento;
    }

    public Number getCantidad() {
        return cantidad;
    }

    public void setCantidad(Number cantidad) {
        this.cantidad = cantidad;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getCodTributo() {
        return codTributo;
    }

    public void setCodTributo(String codTributo) {
        this.codTributo = codTributo;
    }

    public Number getUniMedida() {
        return uniMedida;
    }

    public void setUniMedida(Number uniMedida) {
        this.uniMedida = uniMedida;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Number getPrecioUni() {
        return precioUni;
    }

    public void setPrecioUni(Number precioUni) {
        this.precioUni = precioUni;
    }

    public Number getMontoDescu() {
        return montoDescu;
    }

    public void setMontoDescu(Number montoDescu) {
        this.montoDescu = montoDescu;
    }

    public Number getVentaNoSuj() {
        return ventaNoSuj;
    }

    public void setVentaNoSuj(Number ventaNoSuj) {
        this.ventaNoSuj = ventaNoSuj;
    }

    public Number getVentaExenta() {
        return ventaExenta;
    }

    public void setVentaExenta(Number ventaExenta) {
        this.ventaExenta = ventaExenta;
    }

    public Number getVentaGravada() {
        return ventaGravada;
    }

    public void setVentaGravada(Number ventaGravada) {
        this.ventaGravada = ventaGravada;
    }

    public List<String> getTributos() {
        return tributos;
    }

    public void setTributos(List<String> tributos) {
        this.tributos = tributos;
    }

    public Number getPsv() {
        return psv;
    }

    public void setPsv(Number psv) {
        this.psv = psv;
    }

    public Number getNoGravado() {
        return noGravado;
    }

    public void setNoGravado(Number noGravado) {
        this.noGravado = noGravado;
    }

    public Number getIvaItem() {
        return ivaItem;
    }

    public void setIvaItem(Number ivaItem) {
        this.ivaItem = ivaItem;
    }

    @Override
    public String toString() {
        return "CuerpoDocumento_f{" + "numItem=" + numItem + ", tipoItem=" + tipoItem + ", numeroDocumento=" + numeroDocumento + ", cantidad=" + cantidad + ", codigo=" + codigo + ", codTributo=" + codTributo + ", uniMedida=" + uniMedida + ", descripcion=" + descripcion + ", precioUni=" + precioUni + ", montoDescu=" + montoDescu + ", ventaNoSuj=" + ventaNoSuj + ", ventaExenta=" + ventaExenta + ", ventaGravada=" + ventaGravada + ", tributos=" + tributos + ", psv=" + psv + ", noGravado=" + noGravado + ", ivaItem=" + ivaItem + '}';
    }
    
}
