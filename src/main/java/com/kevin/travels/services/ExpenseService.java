package com.kevin.travels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.kevin.travels.models.Expense;
import com.kevin.travels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepo;
	
	public ExpenseService(ExpenseRepository expenseRepo) {
		this.expenseRepo = expenseRepo;
	}
	
	public List<Expense> allExpenses() {
		return expenseRepo.findAll();
	}
	
	public Expense createExpense(Expense e) {
		return expenseRepo.save(e);
	}
	
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}
	
	public Expense updateExpense(Expense e) {
		return expenseRepo.save(e);
	}
	
	public void deleteExpense(Long id) {
		expenseRepo.deleteById(id);
	}
}
