*** overall logistic regreession for problem detection

logistic problem_detection delta_days ave_len num_review num_journal len i.jif_bin i.ave_jif_bin tfidf_sim


encode subject2, generate(subject_code)
generate longevity=delta_month/12

generate tfidf_sim_norm2=tfidf_sim*10
generate ave_len_norm2=ave_len*10
generate pubrate=num_doi/num_review

logistic problem_detection longevity ave_len num_review num_doi num_journal ave_jif embedding_sim 

if final!=0 i.subject_code if final!=0

by reason_manuscript, sort: logistic problem_detection longevity ave_len num_review num_doi num_journal ave_jif tfidf_sim i.subject_code


by reason_manuscript, sort: logistic problem_detection longevity ave_len num_review num_doi num_journal ave_jif tfidf_sim 


generate longevity=delta_months/12
by reason_manuscript, sort: logistic problemdetection longevity ave_len num_review num_journal ave_jif tfidf_sim

by reason_manuscript, sort: logistic problemdetection longevity ave_len num_review num_journal ave_jif embedding_sim num_doi


by reason_manuscript, sort: logistic problemdetection longevity ave_len num_review num_journal ave_jif tfidf_sim_norm2 pubrate

logistic problemdetection longevity ave_len num_review num_journal ave_jif tfidf_sim num_doi

by reason_manuscript, sort: logistic problemdetection longevity ave_len num_review num_journal ave_jif tfidf_sim_norm2 num_doi




by reason_manuscript, sort: logistic praise longevity ave_len num_review num_journal ave_jif tfidf_sim_norm2 pubrate
logistic solutionsuggestion longevity ave_len num_review num_journal ave_jif tfidf_sim_norm2 pubrate