/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.VeiculoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Mveiculo;

/**
 *
 * @author Guto
 */
public class Veiculo extends HttpServlet {

  
   VeiculoDao  veiculodao = new VeiculoDao();
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        
      
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          
        try {
            
            String modelo = request.getParameter("modelo");
            String marca = request.getParameter("marca");
            String renavam = request.getParameter("renavam");
            String placa = request.getParameter("placa");
            String ano = request.getParameter("ano");
            String porte = request.getParameter("porte");
            String cor = request.getParameter("cor");
            String carrocaria = request.getParameter("carrocaria");
            int idMoto = Integer.parseInt(request.getParameter("idMotorista"));
            
            Mveiculo v = new Mveiculo();
            v.setAno(ano);
            v.setCarroceria(carrocaria);
            v.setCor(cor);
            v.setIdMotorista(idMoto);
            v.setMarca(marca);
            v.setModelo(modelo);
            v.setPlaca(placa);
            v.setPorte(porte);
            v.setRenavam(renavam);
                 
            
            
            
            
            
            if (request.getParameter("acao").equalsIgnoreCase("cadastroVeiculo")) {
            veiculodao.inserirVeiculo(v);
            response.sendRedirect("listaCarrosMotorista.jsp");
            
            
            }
            
        } catch (Exception e) {
            
            
            
        }
        
      
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
