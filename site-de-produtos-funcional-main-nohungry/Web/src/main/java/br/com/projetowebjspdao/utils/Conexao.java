package br.com.projetowebjspdao.utils;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Conexao {
	//VARIAVEIS GLOBAIS
	private Connection con;
	private Statement s;
	//DADOS DE CONEXAO
	
	//ENCEREÇO DO BANCO:
	private final String enderecoFisicoBanco = "jdbc:postgresql://localhost:5433/";
	//NOME DO BANCO
	private final String banco = "PROJETO_ESTACIO";
	private final String usuario = "postgres";
	private final String senha = "M@rllon3455";
	private String mensagem;
	//METODO RESPONSAVEL POR ABRIR CONEXÃO COM BANCO DE DADOS...
	public void conectar() {
		try {
			if(con == null || con.isClosed()) {
				Class.forName("org.postgresql.Driver");
				con = DriverManager.getConnection(enderecoFisicoBanco + banco, usuario, senha);
				//System.out.println("CONEXÃO ABERTA...");
			}
			
		}catch(Exception e) {
			System.out.println("Erro conectar:"+ e);
		}
	}
	//METODO RESPONSAVEL POR FECHAR CONEXÃO COM O  BANCO DE DADOS...
	public void desconectar() {
		if(con != null) {
			try {
				if(s != null) {
					s.close();
					s = null;
				}
				con.close();
				//System.out.println("CONEXÃO FECHADA...");
			}catch (Exception e) {
				//EM CASO DE ERRO
				System.out.println("Error desconectar : "+ e);
			}
		}
	}
	//METODO UTILIZADO PARA EXECUTAR ATUALIZAÇÕES: ATUALIZAR DELETAR INCLUIR.
	
	public int executarAtualizacao(String sql) {
		mensagem = "Sucesso na execução";
		try {
			conectar();
			if(s == null) {
				s = con.createStatement();
			}
			//EXECUTANDO SQL...
			int rs = s.executeUpdate(sql);
			
			desconectar();
			return rs;
		}catch (Exception e) {
			//EM CASO DE ERRO
			desconectar();
			mensagem = "Erro atualizar:" + e;
			
		}
		return 0;
		
	}
	//METODO PARA EXECUTAR UMA CONSULTA PASSANDO UMA QUERY
	public ResultSet executarConsulta(String sql) {
		mensagem = "Sucesso na execução";
		try {
			if(s == null) {
				s = con.createStatement();
			}
			
			//ARMAZENA O RESULTADO DA CONSULTA
			ResultSet rs = s.executeQuery(sql);
			return rs;
		}catch(Exception e) {
			mensagem = "Erro executar:" + e;
			System.out.println(mensagem);
		}
		return null;

	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	

}
