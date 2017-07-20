#Problem 2#

Solved in Java, using some TDD to get there.  Also practicing use of IntelliJ IDEA as an IDE, which brings some setup overhead for a small problem.
  
Slight mis-understanding of the question lead to spending some time looking at different number options as I thought I was going to handle the 4,000,000th _term_ rather than the sum of terms being &lt;  4,000,000, hence some non optimal coding history here.

Code is not as memory efficient as it could be as it generates all the terms in the series then sums them rather than calculating on the fly.  Arguably a side effect of TDD starting by testing that the correct term values were being calculated before going on to sum the even terms.

