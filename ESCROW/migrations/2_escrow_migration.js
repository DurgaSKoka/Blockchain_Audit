const Migration = artifacts.require("Migrations");
const Escrow = artifacts.require("Escrow");

module.exports = function(deployer) {
  const buyerAddress = "0xD979DcEfcf6E80Cae35CAc1E498480d9D20FA91a";
  const sellerAddress = "0xe258A449855d4A6F5557fABB0D8720d99edA0eD8";

  deployer.deploy(Migration)
    .then(() => {
      return deployer.deploy(Escrow, buyerAddress, sellerAddress);
    });
};

const EscrowStatus = {
  0: "AWAITING_PAYMENT",
  1: "FUNDS_DEPOSITED",
  2: "FUNDS_RELEASED",
  3: "FUNDS_REFUNDED",
};

// ...

const statusName = EscrowStatus;

