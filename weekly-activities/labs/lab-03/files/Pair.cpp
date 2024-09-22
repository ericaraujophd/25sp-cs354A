#include <iostream>
#include "Pair.h"
using namespace std;

// default constructor
Pair::Pair() {
	myFirst = Item();
	mySecond = Item();
}

// explicit-value constructor
Pair::Pair(Item first, Item second) {
	myFirst = first;
	mySecond = second;
}

Item Pair::getFirst() const {
	return myFirst;
}

Item Pair::getSecond() const {
	return mySecond;
}

void Pair::setFirst(Item newVal) {
	myFirst = newVal;
}

void Pair::setSecond(Item newVal) {
	mySecond = newVal;
}

string Pair::toString() const {
	return "<" + to_string(myFirst) + ", " + to_string(mySecond) + ">";
}

ostream &operator<<(ostream &out, const Pair &p) {
	out << p.toString();
	return out;
}
