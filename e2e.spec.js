let chai = require('chai');
let expect = chai.expect;
chai.use(require('chai-string'));
chai.use(require('chai-as-promised')); // has to be last

describe('e2e suite', function() {
  this.timeout(0);
  describe('landing page', () => {
    beforeEach(() => {
      browser.get('http://localhost:3000/');
    });
    it('should have a title', () => {
      expect(browser.getTitle()).to.eventually.startsWith('Foodsaving Worldwide');
    });
    it('should have a login button', () => {
      expect(element(by.linkText('Login')).isPresent()).to.eventually.be.true;
    });
});

});