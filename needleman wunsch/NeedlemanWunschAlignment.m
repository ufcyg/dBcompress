# https://onlineresource.ucsy.edu.mm/bitstream/handle/123456789/2319/NJPSC%202019%20Proceedings-pages-209-213.pdf?sequence=1&isAllowed=y
function similarityScore = NeedlemanWunschAlignment(sequenceA,sequenceB)
  match = 0;
  mismatch = -1;
  gap = -2;
  sequenceA = lower(sequenceA);
  sequenceB = lower(sequenceB);
  
  alignmentMatrix = GenerateMatrix(sequenceA,sequenceB);
  
  alignmentMatrix = InitGapPenalty(alignmentMatrix,gap);
  
  for y=3:1:size(alignmentMatrix,1)
    for x=3:1:size(alignmentMatrix,2)
      upValue = CalcUpValue(alignmentMatrix,x,y,gap);
      leftValue = CalcLeftValue(alignmentMatrix,x,y,gap);
      diagonalValue = CalcDiagonalValue(alignmentMatrix,x,y,match,mismatch);
      
      alignmentMatrix(y,x) =  max([upValue,leftValue,diagonalValue]);
    endfor
  endfor
  similarityScore = CalcSimilarity(alignmentMatrix,sequenceA,sequenceB);
endfunction

function alignmentMatrix = GenerateMatrix(sequenceA,sequenceB)
  alignmentMatrix = cell(length(sequenceA)+2,length(sequenceB)+2);
  alignmentMatrix(2,2) = 0;
  for y=1:1:length(sequenceA)
    alignmentMatrix(y+2,1) = sequenceA(y);
  endfor
  for x=1:1:length(sequenceB)
    alignmentMatrix(1,x+2) = sequenceB(x);
  endfor
endfunction

function alignmentMatrix = InitGapPenalty(alignmentMatrix,gapPenalty)
  for y=3:1:size(alignmentMatrix,1)
    alignmentMatrix(y,2) = alignmentMatrix(y-1,2){} + gapPenalty;
  endfor
  for x=3:1:size(alignmentMatrix,2)
    alignmentMatrix(2,x) = alignmentMatrix(2,x-1){} + gapPenalty;
  endfor
endfunction

function upValue = CalcUpValue(alignmentMatrix,x,y, gapPenalty)
  upValue = alignmentMatrix(y-1,x){} + gapPenalty;
endfunction
function leftValue = CalcLeftValue(alignmentMatrix,x,y, gapPenalty)
  leftValue = alignmentMatrix(y,x-1){} + gapPenalty;
endfunction

function diagonalValue = CalcDiagonalValue(alignmentMatrix,x,y,match,mismatch)
  diagonalValue = alignmentMatrix(y-1,x-1){};
  if alignmentMatrix(1,x){} == alignmentMatrix(y,1){}
    diagonalValue = diagonalValue + match;
  else
    diagonalValue = diagonalValue + mismatch;
  endif
endfunction


#Similarity(source,target) =(Distance(source,target))/(Maximumlength(source,target))*100%
function similarityScore = CalcSimilarity(alignmentMatrix,sequenceA,sequenceB)
  distance = alignmentMatrix(size(alignmentMatrix,1),size(alignmentMatrix,2)){};
  maximumLength = max([length(sequenceA),length(sequenceB)]);
  similarityScore = distance / maximumLength;
endfunction

function Traceback(alignmentMatrix)
  
endfunction