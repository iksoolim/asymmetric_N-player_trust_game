(* ::Package:: *)

(* ::Input:: *)
(*fMeanStar00:=0;(* Optimal payoff at (0,0). *)*)
(*fMeanStar11:=((1-a+r+a r) (-1+w^nI))/((nI+nT) (-1+w))+((-1+a) nT \[Epsilon])/(nI+nT); (* Optimal payoff at (1,1). *)*)
(*fMeanStar10:=-((a nI)/(nI+nT))+(1-w^nI)/((nI+nT) (1-w))-((-1+a) nI \[Epsilon])/(nI+nT); (* Optimal payoff at (1,0). *)*)
(*timeAveragePayoffUnstable0:=(-((a nT)/1000)+1/((-1+w) (-(r/(-1+w^nI))+(1000 (1+r) (nI-nI r+(nT r)/1000))/(nT (nI (-1+w)+r (-1+w^nI))))))/(nI+nT);*)
(*timeAveragePayoffUnstablePeak:=-(((-1+w^nI) (r+nI (-1+a (-1+r^2)) (-1+w)-r w^nI+2 Sqrt[-a nI (-1+r^2) (-1+w) (nI (-1+w)+r (-1+w^nI))]))/((nI+nT) r (-1+w) (-1+nI-nI w+w^nI)));*)
(*timeAveragePayoffUnstable1:=(-((999 a (1-r) (-1+w^nI))/(1000 (-1+w)))+1/((-1+w) (-(r/(-1+w^nI))+(1000 (1+r) (-1+w) (nI-nI r+(999 (1-r) r (-1+w^nI))/(1000 (-1+w))))/(999 (1-r) (-1+w^nI) (nI (-1+w)+r (-1+w^nI))))))/(nI+nT);*)
(*fMeanStarCycle:=Max[If[0<(a nI (-1+r^2) (-1+w)+Sqrt[-a nI (-1+r^2) (-1+w) (nI (-1+w)+r (-1+w^nI))])/(a (1-r) r (-1+nI-nI w+w^nI))<1,{timeAveragePayoffUnstable0,timeAveragePayoffUnstablePeak,timeAveragePayoffUnstable1},{timeAveragePayoffUnstable0,timeAveragePayoffUnstable1}]];  (* Optimal payoff at a heteroclinic cycle. *)*)
(**)
(*aL={2,6};*)
(*nTL={5};*)
(**)
(*fL:=If[w<1,{fMeanStar00,fMeanStar10,fMeanStar11},{fMeanStar00,fMeanStar10,fMeanStar11,fMeanStarCycle}];*)
(*gL=Table[*)
(*rCritical=a/(1+a)-(a nI (w-1))/((1+a) (w^nI-1));*)
(*Show[wCritical=w/.FindRoot[fMeanStar10-fMeanStar00,{w,1+10^-3}];Print["\!\(\*SuperscriptBox[\(w\), \(*\)]\) = ",wCritical];*)
(*ContourPlot[First[Flatten[Position[fL,Max[fL]]]],{w,0+0.01,4+0},{r,0+0.01,1-0.01},PlotPoints->2^5,Contours->3,ContourShading->ColorData[35,"ColorList"][[{2,4,5,9}]],PlotRange->{0.9,4.5},FrameStyle->Directive[Gray,FontSize->Large],*)
(*PlotLabel->Style["a = "<>ToString[a]<>If[a==aL[[1]],", \!\(\*SubscriptBox[\(N\), \(I\)]\) = "<>ToString[nI],", \!\(\*SubscriptBox[\(N\), \(I\)]\) = "<>ToString[nI]],Small,Opacity[0]],FrameLabel->{Style["w",Large],Style["r",Large]},RotateLabel->False,PlotRangeClipping->False]*)
(*,Graphics[{Text[Style["a = "<>ToString[a]<>", \!\(\*SubscriptBox[\(N\), \(I\)]\) = "<>ToString[nI],GrayLevel[0.3],Large],{2,1.1}]}]*)
(*,Graphics[{Dashed,White,Line[{{0,(a-1)/(a+1)},{wCritical,(a-1)/(a+1)}}]}],Graphics[{Dashed,InfiniteLine[{{wCritical,(a-1)/(a+1)},{1,(a-1)/(a+1)}}]}]*)
(*,Graphics[{Dashed,White,InfiniteLine[{{0,a/(a+1)},{1,a/(a+1)}}]}]*)
(*,Graphics[{Dotted,Cyan,Thickness[0.01],Line[{{wCritical,0},{wCritical,(a-1)/(a+1)}}]}]*)
(*,Plot[rCritical,{w,10^-3,4+0},PlotRange->{0.99 (a-1)/(a+1)+(1-0.99) a/(a+1),a/(a+1)},PlotStyle->{Dotted,Cyan,Thickness[0.01]}],ImageSize->Medium,ImagePadding->50],{nI,{5,15}},{nT,nTL},{a,aL},{\[Epsilon],{0}}];*)
(**)
(*gL=Flatten[gL];*)
(*GraphicsColumn[{GraphicsRow[{gL[[1]],gL[[2]]}],GraphicsRow[{gL[[3]],gL[[4]]}]},Spacings->{-0,-30},ImagePadding->None,ImageSize->700]*)


(* ::Input:: *)
(*SwatchLegend[ColorData[35,"ColorList"][[{2,4,5,9}]],{Style["\!\(\*SubscriptBox[\(v\), \(I\)]\)=0,\!\(\*SubscriptBox[\(v\), \(T\)]\)=0; (0,0)",30],Style["\!\(\*SubscriptBox[\(v\), \(I\)]\)=1+\[Epsilon],\!\(\*SubscriptBox[\(v\), \(T\)]\)=0; (1,0)",30],Style["\!\(\*SubscriptBox[\(v\), \(I\)]\)=0,\!\(\*SubscriptBox[\(v\), \(T\)]\)=\!\(\*SubsuperscriptBox[\(v\), \(T\), \(*\)]\)+\[Epsilon]; (1,1)",30],Style["\!\(\*SubscriptBox[\(v\), \(I\)]\)=0,\!\(\*SubscriptBox[\(v\), \(T\)]\)=\!\(\*SubsuperscriptBox[\(v\), \(T\), \(hc\)]\); Het. cycle",30]},LegendLayout->{"Row",1},LegendMarkerSize->30]*)
