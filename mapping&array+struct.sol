// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract tambahKeArrayDanMapping{
  struct customer{
    string name;
    string alamat;
    uint saldo;
  }
  customer[] public arrayCustomer;
  mapping(string=>uint)public mappingCustomer;
  function isiArray(string memory _name, string memory _alamat, uint _saldo)public{
    arrayCustomer.push(customer(_name, _alamat, _saldo));
    mappingCustomer[_name]=_saldo;
  }
}