pragma solidity 0.8.13;

contract Counter {
    uint public count = 0;

    event Increment(uint value);
    event Decrement(uint value);
    
    function increment()public{
        count += 1;
        emit Increment(count);
    }

    function deccrement()public{
        count -= 1;
        emit Decrement(count);
    }

    function getCount()view public returns(uint){
        return count;
    }
}