
package com.nexler.nx.interpreter;
import java.io.IOException;

import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.CommonTokenStream;

import com.nexler.nx.interpreter.nexlerParser.CinContext;
import com.nexler.nx.interpreter.nexlerParser.SubordinateContext;

public class Main {

	private static final String EXTENSION = "nxl";

	public static void main(String[] args) throws IOException {
		String program = args.length > 1 ? args[1] : "test/test." + EXTENSION;

		System.out.println("Interpreting file " + program);

		nexlerLexer lexer = new nexlerLexer(new ANTLRFileStream(program));
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		nexlerParser parser = new nexlerParser(tokens);

		nexlerParser.SubordinateContext tree = parser.subordinate();

		nexlerCustomVisitor visitor = new nexlerCustomVisitor();
		visitor.visit(tree);

		System.out.println("Interpretation finished");

	}

}
