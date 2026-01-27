package app.metier.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Produit {
	private int idProduct;
	private String productName;
	public Produit() {
		// TODO Auto-generated constructor stub
	}
	
	//Getters et setters
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	
	//Crearion de la methode enregistrer*
	public void enregistrer(Produit pd) {
		String sql = "INSERT INTO produit(nomProduit) VALUES(?)";
		Connection connection =null;
		DBA bd = new DBA();
		connection = bd.seconnecter();
		PreparedStatement pst = null;
		
		try {
			pst = connection.prepareStatement(sql);
			pst.setString(1,pd.getProductName());
			int i = pst.executeUpdate();
			if(i!=0) System.out.println("Reussi !");
			else System.out.println(" non reussi !");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//Mehode get data
	public List<Produit> getProduits(Produit pd){
		List<Produit> lpds = new ArrayList<Produit>();
		
		
		return lpds;
	}
	

}
/*idProduct
productName
productQuantity
productPrice*/