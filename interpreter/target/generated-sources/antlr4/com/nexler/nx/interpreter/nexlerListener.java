// Generated from com/nexler/nx/interpreter/nexler.g4 by ANTLR 4.5.1
package com.nexler.nx.interpreter;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link nexlerParser}.
 */
public interface nexlerListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link nexlerParser#start}.
	 * @param ctx the parse tree
	 */
	void enterStart(nexlerParser.StartContext ctx);
	/**
	 * Exit a parse tree produced by {@link nexlerParser#start}.
	 * @param ctx the parse tree
	 */
	void exitStart(nexlerParser.StartContext ctx);
}