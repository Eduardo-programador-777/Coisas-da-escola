package br.com.etechoracio.playlivros.model;

public class Usuario {
    private String foto;
    private String nome;

    public Usuario(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}
