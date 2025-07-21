// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract satuOrangSatu {
  mapping(string=>uint)public nameToUint;
  uint[]public jumlahRotiTerjual;
  string[]public namanamapembeli;
  function beliroti(string memory _name,uint _jumlah) public {
    require(nameToUint[_name]==0,"hahaha udah broo");
    nameToUint[_name]=_jumlah;
    namanamapembeli.push(_name);
    jumlahRotiTerjual.push(_jumlah);
  }
  function liatpembeli() public view returns(string[] memory){
    return namanamapembeli;
  }
  function rotiterjual() public view returns(uint total){
    for (uint i = 0; i < jumlahRotiTerjual.length; i++) {
            total += jumlahRotiTerjual[i];
        }
    return total;
  }
}