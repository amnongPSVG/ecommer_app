class TPricingCalculator {
  // Calculator price base on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shoppingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shoppingCost;
    return totalPrice;
  }

  // calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // get tax rate for location
  static double getTaxRateForLocation(String location) {
    // look up the shipping cost for the giving location to use a shipping rate api
    // calculate the shipping cost base on various factor like distanc, weight
    return 5.00; // example tax rate  of 10%
  }

  // get Shipping Cost
  static double getShippingCost(String location) {
    // look up the shipping cost for the giving location to use a shipping rate api
    // calculate the shipping cost base on various factor like distanc, weight
    return 5.00; // example shipping cost $5
  }
}
