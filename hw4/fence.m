function [segs, poles] = fence(lng, seg)
segs = ceil(lng / seg);
poles = segs + 1;