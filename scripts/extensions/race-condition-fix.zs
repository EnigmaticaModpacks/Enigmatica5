#priority 1100

import stdlib.List;

public expand <T> T[] {
    public implicit as List<T> {
        var out = new List<T>();
        for value in this {
            out.add(value);
        }
        return out;
    }
}