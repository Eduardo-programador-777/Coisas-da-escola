package br.com.etechoracio.playlivros.test;

import br.com.etechoracio.playlivros.model.Avaliacao;
import br.com.etechoracio.playlivros.model.Usuario;

import java.time.LocalDateTime;

public class TesteAvaliacao {
    static void main() {
        Usuario horacio = new Usuario("Horácio Augusto da Silveira");

        Avaliacao avaliacao = new Avaliacao();
        avaliacao.setData(LocalDateTime.now());
        avaliacao.setUsuario(horacio);
        avaliacao.adicionar(3, "Livro excelente", "Para mim que tenho filho maior que 5 anos, não achei interessante");
        avaliacao.aprovar();
        avaliacao.exibir();

    }
}
