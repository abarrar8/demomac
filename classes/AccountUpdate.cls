public class AccountUpdate {
/*
    // Method to update a single account
    public static void updateAccount(Id accountId, String newName, String newPhone) {
        try {
            // Query the Account record by ID
            Account acc = [SELECT Id, Name, Phone FROM Account WHERE Id = :accountId LIMIT 1];
            
            // Update the fields
            acc.Name = newName;
            acc.Phone = newPhone;
            
            // Perform the update
            update acc;
        } catch (Exception e) {
            // Handle exceptions (e.g., if the Account is not found)
            System.debug('Error updating account: ' + e.getMessage());
        }
    }
*/
    // Method to update multiple accounts
    public static void updateAccounts() {
        try {
            // Query the Account records by their IDs
            List<Account> accountsToUpdate = [SELECT Id, Name, Phone FROM Account ];
            
            // Iterate through the list and update fields
            for (Account acc : accountsToUpdate) {
                acc.Name = acc.name + 12 ;
                acc.Phone = '3213214321';
            }
            
            // Perform the update in bulk
            update accountsToUpdate;
        } catch (Exception e) {
            // Handle exceptions
            System.debug('Error updating accounts: ' + e.getMessage());
        }
    }
}