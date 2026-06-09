class BudgetCalculator {
  static double dailyBudget({
    required double totalBudget,
    required int days,
  }) {
    if (days <= 0) return totalBudget;
    return totalBudget / days;
  }
}
