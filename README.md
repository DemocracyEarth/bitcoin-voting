[English](#simple-and-secure-voting-system-with-bitcoin) ∙

## Simple and secure voting system with Bitcoin

A schema designed to utilize Bitcoin cryptocurrency for secure and simple electronic voting. In the heart of the schema lies the [Blockchain](https://en.wikipedia.org/wiki/Bitcoin#Block_chain), so all the processes of the system are open to public audition.

#### Requirements:

* All actors of the election should be able to have a Bitcoin account.
* All actors of the election should be able to secure their voting computer.

#### Actors:

* Election Authority
* Candidate
* Voter

#### Terminology:

* Block Chain: Bitcoin public transaction list
* 0.00000001 Bitcoin: the smallest unit of Bitcoin
* BTC: Abbreviation for Bitcoin currency

#### Schema:

0. **Election Authority declaration:**
 - Election Authority publicly announces its Bitcoin address.

1. **Voter registration:**
 - Voters show a valid ID and provide their Bitcoin address to Election Authority, who sends them 0.00000001 BTC in return.
 - All voter Bitcoin addresses are publicly listed in the Blockchain.
 - To carry out citizens' right to vote anonymously, the Election Authority keeps the IDs to prevent double registration but does not keep a record of association between the IDs and the provided Bitcoin addresses.

2. **Candidate registration:**
 - Candidates provide a valid ID and their Bitcoin address to Election Authority, who sends them 0.00000002 BTC in return.
 - All Candidate Bitcoin addresses are publicly listed in the Blockchain.
 - As opposed to Voter registration, Election Authority stores and publicly announces a record of association between each candidate ID and their provided Bitcoin address.
 - Candidates are obliged to announce their Bitcoin addresses.

3. **Starting the election:**
 - Election starts when Election Authority sends 0.00000001 BTC to all the Voters' Bitcoin addresses publicly listed in the Blockchain.

4. **Voting:**
 - Voters send 0.00000001 BTC to their preferred candidate's Bitcoin addresses publicly listed in the Blockchain.

5. **Validation:**
- The process of voting will have an extra step to make it full transparent: voters should check that BTC is only present in Candidate address that they vote.

6. **Ending the election:**
 - Election ends when all voting transactions are processed for each candidate in the Blockchain.
 - If time limit is put in place, Election Authority must declare the election start and end date and time.
 - If this is a time limited election, any vote before the start datetime and after end datetime is considered invalid.

7. **Election result:**
 - Election result is obtained by counting all valid voting transactions from the registered voting addresses to the registered candidate addresses in the Blockchain.
 - Any other transaction after the first 0.00000001 BTC transaction from the Voter to the Candidate is considered disqualified.
 - The whole process from the registrations to the voting and counting the results is open to audition by anyone.

#### Contribution

This basic schema can be implemented today with the existing Bitcoin infrastructure. One can develop applications and interfaces for better user experience of this system. Please send your comments and questions on issues and feel free to fork the repository and send pull requests.

#### License

[The MIT License (MIT)](https://github.com/arikan/bitcoin-voting/blob/master/LICENSE)
