pragma solidity ^0.8.0;
contract Array {
  uint [] public arraySaldoCustomer;
  string[] public arrayNamaCustomer;
  function tambaKeArray(string  memory _name, uint _saldo) public {
    arraySaldoCustomer.push(_saldo);
    arrayNamaCustomer.push(_name);
  }

}
contract Mapping {
  mapping(string=>uint)public mappingSaldoCustomer;
  function tambahKeMapping(string memory _name, uint _saldo) public {
    mappingSaldoCustomer[_name]=_saldo;
  }
}