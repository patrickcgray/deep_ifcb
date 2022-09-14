# Suppemental figures from Nardelli et al

These five figures are the supplemental materials for Nardelli et al 2022 <b>A convolutional neural network to classify phytoplankton images along the West Antarctic Peninsula</b>
 
 ![image](https://user-images.githubusercontent.com/2497349/190203354-d9f2f927-879e-421b-a80d-5be3193bc0b1.png)
Figure S1. This confusion shows the full unmerged set of classes the CNN was trained on. These matrices show the same model as reported in the paper but with a different random initiation of the model and different random shuffling of the training data so some minor variation is expected. The data here is from a test dataset that the model was not trained or validated on but still was balanced (~500 samples per class) and screened manually for samples with multiple cells, out of focus samples, or indistinguishable contents. The major diagonal represents correctly predicted samples and anything off the diagonal is misclassified. The color stretch shows the percent of each class in that category – note that white is 0% and the darkest green is 90%.

 ![image](https://user-images.githubusercontent.com/2497349/190203405-8dadba5a-f559-46dc-b054-c88aeea20add.png)
Figure S2. This confusion matrix shows the same data as S1 but it has been merged into a coarser set of classes. Notice that the percent correct goes up substantially, though the color stretch has been changed (dark green is 20%) to emphasize misclassifications.

 ![image](https://user-images.githubusercontent.com/2497349/190203440-bc5ef188-0e9e-47ef-99ff-d17700178f5d.png)

Figure S3. This confusion matrix shows the same data again but this time in the most merged (coarsest) set of classes. As in S2 the color stretch here goes from 0% to 20% to emphasize misclassifications. 
 ![image](https://user-images.githubusercontent.com/2497349/190203482-3c14c9a2-6663-4b77-bae9-1d6e5431ba8e.png)

Figure S4. This confusion matrix shows the same CNN model used in Figures S1-S3, but this time the data being displayed is from a random test dataset with a real-world distribution. The count of each class is displayed before the name which makes clear that many classes are extremely rare or even nonexistent and a few classes dominate the dataset. Note that the color stretch has been changed again (dark green is 25%) to best emphasize misclassifications.

![image](https://user-images.githubusercontent.com/2497349/190203519-7da117a1-9727-4c97-8472-db139c16b3b9.png) 
Figure S5. Sample count for the 40 training classes.  
