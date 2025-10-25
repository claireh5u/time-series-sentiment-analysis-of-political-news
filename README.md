**Time Series Sentiment Analysis of Political News**

**Overview**  
This project analyzes how the sentiment of political news evolves over time, integrating clustering, sentiment analysis, and time series modeling into a unified, reproducible pipeline built in R.
Political news is one of the most influential drivers of public opinion and democratic discourse. By combining text mining and statistical learning techniques, this project identifies sentiment trends, clustered news themes, and temporal dependencies that reflect changes in political tone and media framing over time.

**Objectives**  
1.	Cluster political news articles based on thematic and sentiment similarity.
2.	Analyze sentiment dynamics within and across clusters over time.
3.	Model temporal dependencies in sentiment using time series methods.
These objectives aim to uncover long-term sentiment shifts, reactions to political events, and the structure of media discourse using interpretable, data-driven techniques.

**Methodological Framework**  

<img width="452" height="170" alt="image" src="https://github.com/user-attachments/assets/1e569897-02c3-4191-b443-d6865e9944e5" />  
    
<img width="468" height="182" alt="image" src="https://github.com/user-attachments/assets/42c60413-f1a1-4c9c-9c22-3e03339dc989" />

**Results**

<img width="468" height="274" alt="image" src="https://github.com/user-attachments/assets/5709dcf5-f45f-40e6-aa5e-105429a3b448" />

**Clustering Analysis**   
grouped political news headlines into distinct themes based on textual and sentiment similarity:  
 <img width="468" height="286" alt="image" src="https://github.com/user-attachments/assets/1fed60d6-466d-4cd8-8a1b-853695649cdc" /> <img width="468" height="286" alt="image" src="https://github.com/user-attachments/assets/be4805e4-7e78-4c80-8847-1684a610146a" />  
•	K-means clustering revealed several well-defined clusters, where dense groupings indicated consistent language or tone within political topics.  
•	Hierarchical clustering produced interpretable dendrograms showing how headlines merge by similarity.  
•	The resulting clusters appear to correspond to topical areas such as political events, economic issues, and social developments.  
These clusters serve as a foundation for linking content patterns with sentiment and temporal trends.  

**Sentiment Analysis**  
uncovered a clear temporal shift in emotional tone:  
 <img width="468" height="222" alt="image" src="https://github.com/user-attachments/assets/e09c9b95-2449-40d3-941f-325d697c7966" />  
•	Pre-2018: Headlines exhibited high emotional diversity — strong presence of anticipation, trust, anger, fear, and sadness — indicating more emotionally charged reporting.  
•	Post-2018: Emotional variation and intensity decreased substantially, reflecting both a smaller dataset volume and possible changes in media style or political discourse.  
Overall, political news sentiment became more subdued yet polarized, with fewer neutral tones and more contrast between positive and negative emotions over time.  

**Time Series Modeling**  
highlighted evolving sentiment dynamics across years:  
 <img width="468" height="256" alt="image" src="https://github.com/user-attachments/assets/9bc8854e-1a61-420e-9172-4c81bc81da0e" />  
•	Before 2018: Sentiment remained relatively stable and neutral, with limited fluctuation.  
•	2018–2020: Period marked by sharp spikes in both positive and negative sentiment — likely tied to major political events and societal polarization.  
•	Post-2020: A steady negative sentiment trend emerged, suggesting sustained discontent or intensified divisive narratives in media coverage.  
These results collectively indicate a transition toward greater sentiment polarization in political news, aligning with broader trends in media and public discourse.  

**Next steps**  
**Evaluate Model Extensions** to push the analysis further:  
  •	Try deep learning sentiment models (e.g., via transformers in R or Python).  
  •	Compare lexicon-based vs. transformer-based accuracy.  
  •	Integrate topic modeling (LDA) for cluster explainability.  
  •	Use Granger causality or cross-correlation to test if major political events influence sentiment trends.



