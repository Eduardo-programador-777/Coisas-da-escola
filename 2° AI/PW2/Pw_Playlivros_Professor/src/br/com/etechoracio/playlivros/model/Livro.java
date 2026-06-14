package br.com.etechoracio.playlivros.model;

import br.com.etechoracio.playlivros.enums.DisponibilidadeEnum;
import br.com.etechoracio.playlivros.enums.VersaoEnum;

import java.time.LocalDate;
import java.time.LocalTime;

public class Livro {
    //tipo nomeVariavel;
    private String titulo;
    private String autor;
    private String narrador;
    private String editora;
    private LocalTime duracao;
    private VersaoEnum versao;
    private double preco;
    private String resumo;
    private LocalDate dataLancamento;

    public void exibir(){
        System.out.println("-----------------------------------");
        System.out.println("Título: " + titulo);
        System.out.println("Autor: " + autor);
        System.out.println("Narrador: " + narrador);
        System.out.println("Editora: " + editora);
        System.out.println("Preço: " + preco);
        System.out.println(obterDisponibilidade());
    }

    public DisponibilidadeEnum obterDisponibilidade(){
        LocalDate dataAtual = LocalDate.now();
        if(dataLancamento == null){
            return DisponibilidadeEnum.INDISPONIVEL;
        }else if(dataLancamento.isAfter(dataAtual)){
            return DisponibilidadeEnum.EM_PRE_VENDA;
        }else if(dataLancamento.isAfter(dataAtual.minusDays(30))){
            return DisponibilidadeEnum.LANCAMENTO_RECENTE;
        }else{
            return DisponibilidadeEnum.DISPONIVEL;
        }
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void setNarrador(String narrador) {
        this.narrador = narrador;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }

    public void setDuracao(LocalTime duracao) {
        this.duracao = duracao;
    }

    public void setVersao(VersaoEnum versao) {
        this.versao = versao;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public void setResumo(String resumo) {
        this.resumo = resumo;
    }

    public void setDataLancamento(LocalDate dataLancamento) {
        this.dataLancamento = dataLancamento;
    }
}
