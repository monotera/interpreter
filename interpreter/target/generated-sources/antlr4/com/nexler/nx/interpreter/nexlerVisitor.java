// Generated from com/nexler/nx/interpreter/nexler.g4 by ANTLR 4.5.1
package com.nexler.nx.interpreter;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link nexlerParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface nexlerVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link nexlerParser#start}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStart(nexlerParser.StartContext ctx);
}