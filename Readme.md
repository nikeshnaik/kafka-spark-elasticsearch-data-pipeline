## ClickStream Data Pipeline 


### Requirements: [Data Engineer Task](Data_Engineer_Assessment.pdf)

### High Level Design.

  ![Data Pipeline V1](<Pipeline HLD.png>)


### Data Generation:

- Using GPT4 API, we can generate demo data for this task. An example on chatgpt would be: https://chat.openai.com/share/28a0fea4-c73b-4aea-8b6c-4f448e6d2c11



### Infra:

- Everything Kafka, Spark and ElasticSearch work as single docker container respectively to showcase how infra can configured to process such data.


### Data Pipeline Design:

- All data generated through user clicks is send by events to kafka clusters.
- Kafka topic are configured to ingest clickstream data into one topic.
- Spark watches this topic for change in data, once triggered the data is aggregated as per requirements.
- Every transformation dumps data into ElasticSearch node, where data can be search, analysed.

