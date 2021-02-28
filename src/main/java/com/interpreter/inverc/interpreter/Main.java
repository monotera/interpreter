
package com.interpreter.inverc.interpreter;
import java.io.IOException;

import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.CommonTokenStream;

public class Main {

	private static final String EXTENSION = "aif";

	public static void main(String[] args) throws IOException {
		String program = args.length > 1 ? args[1] : "test/test." + EXTENSION;

		System.out.println("Interpreting file " + program);

		invercLexer lexer = new invercLexer(new ANTLRFileStream(program));
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		invercParser parser = new invercParser(tokens);

		invercParser.StartContext tree = parser.start();

		invercCustomVisitor visitor = new invercCustomVisitor();
		visitor.visit(tree);

		System.out.println("Interpretation finished");

	}

}
