Array.prototype.myUniq = function myUniq() {
  const uniques = [];
  for (let i = 0; i < this.length; i++) {
    if (!uniques.includes(this[i])) {
      uniques.push(this[i]);
    }
  }
  return uniques;
};

Array.prototype.twoSum = function twoSum() {
  const twoSums = [];
  for (let i = 0; i < this.length - 1; i++) {
    for (let j = i + 1; j < this.length; j++) {
      if (this[i] + this[j] === 0) {
        twoSums.push([i, j]);
      }
    }
  }
  return twoSums;
};

Array.prototype.myTranspose = function myTranspose() {
  const transposed = [];
  for (let i = 0; i < this.length; i++) {
    const row = [];
    for (let j = 0; j < this[i].length; j++) {
      row.push(this[j][i]);
    }
    transposed.push(row);
  }
  return transposed;
};
