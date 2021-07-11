var HshxToken = artifacts.require("./HshxToken.sol");

module.exports = function(deployer) {
  deployer.deploy(HshxToken, 10000000);
};
 