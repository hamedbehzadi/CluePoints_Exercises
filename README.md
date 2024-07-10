# CluePoints Exercises

This repo provides explanation about the files for the given task.


## File Description
For each of the task, we have created two folders named Exercise_1 and Exercise_2. The implemented code for each exercises have been put in each of the folders.

Exercise_1: 
	
	1- Data_Preprocessing.ipynb: Implements pre-processing steps on the given dataset. The details of preprocessing have been explained in this jupyter file.
	
	2- XGBOOT_Model.ipynb: Implments the training phase. As name shows, we have used XGBoost model for training the given data. The details have been provided in the jupyter file.
	
	3- hospital_stay_data.csv: Original given dataset
	
	4- preprocessed_hospital_stay_data.csv: Preprocessed dataset

Exercise_2:
	
For this exercises we have followed different training appraoach using BERT model. The first training approach is using a pre-trained BERT model and finetuning it directly on the given dataset. The second approach is Multi-Task fine-tuning where an extra dataset is used to fine-tune the pre-trained BERt. This is followed by fine-tuning the model on the given target dataset. For first fine-tuning phase we have a benchmark dataset named Yahoo!Answers. Therefore, our multi-task finetuning follows multiple finetuning on the datasets Yahoo!Answers and StackOverfellow, respectively.

The files and directories are as follow:

	1- yahoo_answers_csv: This directory contains the Yahoo!Answers dataset and its jupyter file implementing preprocessing phase on this dataset.
	
	2- saved_model: This direcory saves fine-tuned model.
	
	3- Data_Preprocessing.ipynb: Implements pre-processing steps on the given dataset. The details of preprocessing have been explained in this jupyter file.
	
	4- BERT_model.ipynb: Implments the training phase. As name shows, we have used BERT model for training the given data. The details have been provided in the jupyter file.
	
	5- stack_overflow_questions_train.csv and stack_overflow_questions_valid.csv: Original given dataset
	
	6- preprocessed_train.csv and preprocessed_val.csv: Preprocessed dataset


cluepoints_env.yml: Anaconda envirnonment containing all dependencies that you need to be able to run the implemented code


Dockerfile and docker-compose.yml: These files include the command for installations such as anaconda env., Jupytherlab, as well as adding files. The provided docker-compose file defines a configuration for the Docker service. For example, it indicates the ports that Jupyter works on. 



## How to run the codes

In order to execute the code, the only thing that you need to do is open a terminal and insert one of the following commands depending on your docker version.

	- docker-compose up
	
	- docker compose up 

It takes some minutes to install conda environments and jupyter. At the jupyter lab is opend in your localhost. Then, the kernel named 'cluepoints' should be already activated. If not, you need to manually select the kernel. 


The Loss and Accuracy figures are related to the text classification task.


![loss](Results/loss.png)


![Acc](Results/acc.png)

