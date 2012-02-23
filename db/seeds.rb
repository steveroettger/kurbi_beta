# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = SymptomCategories.create ([{category: 'Visual Symptoms'}, {category: 'Motor Symptoms'}, {category: 'Sensory Symptoms'}, {category: 'Coordination and Balance Symptoms'}, {category: 'Bowel, Bladder and Sexual Symptoms'}, {category: 'Cognitive Symptoms'}, {category: 'Other Symptoms'}])

d = Dog.new
d.build_person(:attributes => "go", :here => "like normal")

# Visual Symptoms
PredefinedSymptoms.create(name: 'Optic Neuritis', description: 'Blurred vision, eye pain, loss of colour vision, blindness', SymptomCategory: categories.first)
PredefinedSymptoms.create(name: 'Diplopia', description: 'Double Vision', SymptomCategory: categories.first)
PredefinedSymptoms.create(name: 'Nystagmus', description: 'Jerky Eye Movements', SymptomCategory: categories.first)
PredefinedSymptoms.create(name: 'Ocular Dysmetria', description: 'Constant under- or overshooting eye movements', SymptomCategory: categories.first)
PredefinedSymptoms.create(name: 'Internuclear Ophthalmoplegia', description: 'Lack of coordination between the two eyes, nystagmus, diplopia', SymptomCategory: categories.first)
PredefinedSymptoms.create(name: 'Movement and sound phosphenes', description: 'Flashing lights when moving eyes or in response to a sudden noise', SymptomCategory: categories.first)
PredefinedSymptoms.create(name: 'Afferent Pupillary Defect', description: 'Abnormal pupil responses', SymptomCategory: categories.first)

# Motor Symptoms
cat = categories.next
PredefinedSymptoms.create(name: 'Paresis, Monoparesis, Paraparesis, Hemiparesis, Quadraparesis', description: 'Muscle weakness - partial or mild paralysis', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Plegia, Paraplegia, Hemiplegia, Tetraplegia, Quadraplegia', description: 'Paralysis - Total or near total loss of muscle strength', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Spasticity', description: 'Loss of muscle tone causing stiffness, pain and restricting free movement of affected limbs', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Dysarthria', description: 'Slurred speech and related speech problems', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Muscle Atrophy', description: 'Wasting of muscles due to lack of use', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Spasms, Cramps', description: 'Involuntary contraction of muscles', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Hypotonia, Clonus', description: 'Problems with posture', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Myoclonus, Myokymia', description: 'Jerking and twitching muscles, Tics', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Restless Leg Syndrome', description: 'Involuntary Leg Movements, especially bothersome at night', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Footdrop', description: 'Foot drags along floor during walking', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Dysfunctional Reflexes', description: 'MSRs, Babinski\'s, Hoffman\'s, Chaddock\'s', SymptomCategory: cat)

# Sensory Symptoms
cat = categories.next
PredefinedSymptoms.create(name: 'Paraesthesia', description: 'Partial numbness, tingling, buzzing and vibration sensations', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Anaesthesia', description: 'Complete numbness/loss of sensation', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Neuralgia, Neuropathic and Neurogenic pain', description: 'Pain without apparent cause, burning, itching and electrical shock sensations', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'L\'Hermitte\'s', description: 'Electric shocks and buzzing sensations when moving head', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Proprioceptive Dysfunction', description: 'Loss of awareness of location of body parts', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Trigeminal Neuralgia', description: 'Facial pain', SymptomCategory: cat)

# Coordination and Balance Symptoms
cat = categories.next
PredefinedSymptoms.create(name: 'Ataxia', description: 'Loss of coordination', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Intention tremor', description: 'Shaking when performing fine movements', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Dysmetria', description: 'Constant under- or overshooting limb movements', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Vestibular Ataxia', description: 'Abnormal balance function in the inner ear', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Vertigo', description: 'Nausea/vomitting/sensitivity to travel sickness from vestibular ataxia', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Speech Ataxia', description: 'Problems coordinating speech, stuttering', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Dystonia', description: 'Slow limb position feedback', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Dysdiadochokinesia', description: 'Loss of ability to produce rapidly alternating movements, for example to move to a rhythm', SymptomCategory: cat)

#Bowel, Bladder and Sexual Symptoms
cat = categories.next
PredefinedSymptoms.create(name: 'Frequent Micturation, Bladder Spasticity', description: 'Urinary urgency and incontinence', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Flaccid Bladder, Detrusor-Sphincter Dyssynergia', description: 'Urinary hesitancy and retention', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Erectile Dysfunction', description: 'Male and female impotence', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Anorgasmy', description: 'Inability to achieve orgasm', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Retrograde ejaculation', description: 'Ejaculating into the bladder', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Frigidity', description: 'Inability to become sexually aroused', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Constipation', description: 'Infrequent or irregular bowel movements', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Fecal Urgency', description: 'Bowel urgency', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Fecal Incontinence', description: 'Bowel incontinence', SymptomCategory: cat)

#Cognitive Symptoms
cat = categories.next
PredefinedSymptoms.create(name: 'Depression', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Cognitive dysfunction', description: 'Short-term and long-term memory problems, forgetfulness, slow word recall', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Dementia', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Mood swings, emotional lability, euphoria', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Bipolar syndrome', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Anxiety', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Aphasia, Dysphasia', description: 'Impairments to speech comprehension and production', SymptomCategory: cat)

#Other Symptoms
cat = categories.next
PredefinedSymptoms.create(name: 'Fatigue', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Uhthoff\'s Symptom', description: 'Increase in severity of symptoms with heat', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Gastroesophageal Reflux', description: 'Acid reflux', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Impaired sense of taste and smell', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Epileptic seizures', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Swallowing problems', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Respiratory problems', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Sleeping Disorders', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Inappropriately cold body parts', description: '', SymptomCategory: cat)
PredefinedSymptoms.create(name: 'Autonomic nervous system problems', description: '', SymptomCategory: cat)