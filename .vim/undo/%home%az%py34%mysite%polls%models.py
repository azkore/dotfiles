Vim�UnDo� ��z�s�&ٻ��P��H��ao�����(; �,                     ,       ,   ,   ,    U��   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             U�J     �                # Create your models here.5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U�J     �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�X     �                  �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�\     �                 from django.db import models5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             U�]    �                  5�_�      
           	      *    ����                                                                                                                                                                                                                                                                                                                                                             U�    �                 +    votes = models.IntegerField(default=0)`5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             U��     �      	          �             5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             U��     �               9def __str__(self):              # __unicode__ on Python 25�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �                def __str__(self):              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):            5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):           5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):         5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):   5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self):  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U��     �               def __str__(self): 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U��     �                def __str__(self):5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U��    �                  �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�v     �                �             5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             U��     �   	          5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             U��     �   	             �   	          5�_�      !               	        ����                                                                                                                                                                                                                                                                                                                                                             U��     �   	          5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             U��     �   
            !def was_published_recently(self):5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                             U��     �   
            !def was_published_recently(self):5�_�   "   $           #   
        ����                                                                                                                                                                                                                                                                                                                                                             U��    �   	   
           5�_�   #   %           $   
        ����                                                                                                                                                                                                                                                                                                                                                             U��    �   	          5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                             U��     �      	          �      	       5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             U��     �                <F2>5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             U��     �      	          �      	       5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             U��     �                <F2>5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             U��    �      	       5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                                             U��    �                 �              5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                             U��    �                 5�_�   +               ,           ����                                                                                                                                                                                                                                                                                                                                                             U��   	 �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U��     �               !def was_published_recently(self):   �        return self.pub_date >= timezone.now() - datetime.timedelta(days=1)    pub_date = models.DateTimeField('date published')5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�K     �                 �                    from django.db import models           class Question(models.Model):   8        question_text = models.CharField(max_length=200)   =            pub_date = models.DateTimeField('date published')           '            class Choice(models.Model):   :                    question = models.ForeignKey(Question)   F                        choice_text = models.CharField(max_length=200)   B                            votes = models.IntegerField(default=0)5�_�                       B    ����                                                                                                                                                                                                                                                                                                                                                             U�P     �                g                    question = models.ForeignKey(Ques≡jedi=0, tion)≡ (*args, ***kwargs*) ≡jedi≡5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             U�R     �                :                    question = models.ForeignKey(Question)5��