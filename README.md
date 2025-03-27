# Ripple-carry-adder-using-full-adder
📝 Introduction
A Ripple Carry Adder (RCA) is a multi-bit adder that links Full Adders (FA) in series. The carry output of one stage "ripples" into the next stage, causing a delay.

✅ Logic for N-bit RCA
Sum[i] = (A[i] ⊕ B[i]) ⊕ Carry_in[i]

Carry_out[i] = (A[i] ⊕ B[i]) • Carry_in[i] + A[i] • B[i]


Each Full Adder computes the sum and carry bit for a corresponding position.

A Full Adder (FA) can only add two 1-bit numbers along with a carry input. However, in most digital systems, we need to add multi-bit binary numbers (e.g., 4-bit, 8-bit, 16-bit). A Ripple Carry Adder (RCA) extends the functionality of a Full Adder to handle multi-bit addition.

🔹 Key Reasons for Using RCA Over a Single FA

![image](https://github.com/user-attachments/assets/890e10ff-09a8-463d-8b9c-6efd3515e388)


📌 Key Takeaway:
A Full Adder is a fundamental building block for addition, but it alone is not enough for multi-bit numbers.

Ripple Carry Adder chains multiple Full Adders to add larger numbers, making it more practical for real-world computations.

![image](https://github.com/user-attachments/assets/3398f81d-a55f-4d93-acb2-d56d3cbf5bfb)

