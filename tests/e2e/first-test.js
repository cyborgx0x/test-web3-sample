describe('Basic MetaMask interaction', () => {
    before(() => {
      // Visit your dApp
      cy.visit('https://app.uniswap.org');
    });
  
    it('should connect to MetaMask', () => {
      // This will trigger the MetaMask connection flow
      cy.contains('Connect').click();
      cy.contains('MetaMask').click();
      // Synpress will handle the MetaMask popup
      cy.acceptMetamaskAccess().should('be.true');
      // Now check if we're connected
      cy.contains('Connected').should('be.visible');
    });
  });