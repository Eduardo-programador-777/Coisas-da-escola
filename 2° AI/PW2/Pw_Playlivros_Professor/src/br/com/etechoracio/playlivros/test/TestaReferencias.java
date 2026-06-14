package br.com.etechoracio.playlivros.test;

import br.com.etechoracio.playlivros.model.Livro;

public class TestaReferencias {

    static void main() {
        Livro livroA = new Livro();
        livroA.setTitulo("Meu livro A");
        System.out.println(livroA);

        Livro livroB = livroA;
        livroB.setTitulo("Meu livro B");
        System.out.println(livroB);

        System.out.println(livroA);
    }







}
