pragma solidity ^0.5.0;


/**
 * The contractName contract does this and that...
 */
contract Election {
	//constructor
	struct Candidate{
		uint id;//unsigned integer
		string name;
		uint voteCount;
	}

	mapping(uint => Candidate) public candidates;


	uint public candidatesCount;
	function Elections() public{
		addCandidate("candidate 1");
		addCandidate("candidate 2");
		}


	function addCandidate (string memory _name) internal {//local variable name
		candidatesCount ++;
	 candidates[candidatesCount] = Candidate(candidatesCount, _name , 0);
	}	
}

