pragma solidity ^0.5.6;
contract Election {
    address electionAuthority;
    uint electionEndTime;
    string[] candidates; // Registered candidates
    mapping (string => uint) votes; // Candidate ID to number of votes
    mapping (address => bool) voters; // Registered voters
    mapping (address => bool) hasVoted; // If a registered voter has voted or not
    
    constructor() public{
        electionAuthority = msg.sender;
    }
    
    modifier only_election_authority() {
        if (msg.sender != electionAuthority) revert();
        _;
    }
    
    modifier only_registered_voters() {
        if (!voters[msg.sender]) revert();
        _;
    }
    
    modifier vote_only_once() {
        if (hasVoted[msg.sender]) revert();
        _;
    }
    
    modifier only_during_election_time() {
        if (electionEndTime == 0 || electionEndTime > block.timestamp) revert();
        _;
    }
    
    function start_election(uint duration) public
        only_election_authority
    {
        electionEndTime = block.timestamp + duration;
    }
  
    function register_candidate(string memory id) public
        only_election_authority
    {
        candidates.push(id);
    }
    
    function register_voter(address addr) public
        only_election_authority
    {
        voters[addr] = true;
    }
    
    function vote(string memory id) public
        only_registered_voters
        vote_only_once
        only_during_election_time
    {
        votes[id] += 1;
        hasVoted[msg.sender] = true;
    }
    
    function get_num_candidates() public view returns(uint) {
        
        return candidates.length;
    }
    
    function get_candidate(uint i) public
        view returns(string memory _candidate, uint _votes)
    {
        _candidate = candidates[i];
        _votes = votes[_candidate];
    }
}