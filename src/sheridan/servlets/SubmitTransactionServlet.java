package sheridan.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sheridan.BudgetUser;
import sheridan.Transaction;

/**
 * Servlet implementation class SubmitTransactionServlet
 */
@WebServlet("/SubmitTransactionServlet")
public class SubmitTransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubmitTransactionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		ArrayList<Transaction> transactionList;

		Transaction t = null;
		HttpSession session = request.getSession();

		if (!session.isNew()) {
			transactionList = (ArrayList<Transaction>) session
					.getAttribute("transactionList");

			t = (Transaction) session.getAttribute("selectedInvoice");
			if (transactionList == null) {
				transactionList = new ArrayList<Transaction>();
			}

			if (t == null) {
				t = new Transaction();
			}
		} else {

			transactionList = new ArrayList<Transaction>();
			t = new Transaction();
		}

		String description = request.getParameter("description");
		float amount = 0;

		boolean hasError = false;

		try {
			amount = Float.parseFloat(request.getParameter("amount"));
			session.setAttribute("amountError", null);
		} catch (NumberFormatException e) {

			session.setAttribute("amountError", "please enter the amount");
			hasError = true;
		} catch (NullPointerException e) {

			session.setAttribute("amountError", "please enter the amount");
			hasError = true;
		}

		if (description != null && !"".equals(description)) {
			t.setDescription(description);
			session.setAttribute("descriptionError", null);
		} else {
			session.setAttribute("descriptionError",
					"please enter a description");
			t.setDescription(description);
			hasError = true;
		}

		if (amount > 0) {
			t.setAmount(amount);
			session.setAttribute("amountError", null);
		} else {
			session.setAttribute("amountError", "please enter the amount");
			t.setAmount(0);
			hasError = true;
		}

		if (hasError) {
			response.sendRedirect("SystemPage.jsp");

			return;
		}

		BudgetUser user = (BudgetUser) session.getAttribute("user");

		String bool = request.getParameter("dORc");
		if ("credit".equals(bool)) {
			t.setIsCredit(true);
			user.setTotalCredit(user.getTotalCredit() + amount);
			user.setTotalCash(user.getTotalCash() - amount);
		} else {
			t.setIsCredit(false);
			user.setTotalDebit(user.getTotalDebit() + amount);
			user.setTotalCash(user.getTotalCash() + amount);
		}

		transactionList.add(t);

		session.setAttribute("transactionList", transactionList);

		response.sendRedirect("tChart.jsp");
	}
}
