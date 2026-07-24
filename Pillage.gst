<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-10c0-33dc-a9e8-141f" name="Pillage" battleScribeVersion="2.03" revision="1" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <categoryEntries>
    <categoryEntry name="Cavalry" id="373d-f121-420b-4837" hidden="false"/>
    <categoryEntry name="Chieftain" id="beac-c21e-5fb5-9ec0" hidden="false"/>
    <categoryEntry name="Banner" id="0d90-fe5f-a1e1-8fc5" hidden="false"/>
    <categoryEntry name="Warhorn" id="ef59-7677-afdd-3f24" hidden="false"/>
    <categoryEntry name="Ranged Weapon" id="163f-1820-848c-271d" hidden="false"/>
    <categoryEntry name="Warrior" id="fbfe-2e24-1e84-8984" hidden="false"/>
    <categoryEntry name="Pack Master" id="4967-c713-22c5-2fb3" hidden="false"/>
    <categoryEntry name="Berserker" id="8a90-9bee-5758-3283" hidden="false"/>
    <categoryEntry name="Huscarl" id="a9b5-1198-781f-a9d1" hidden="false"/>
    <categoryEntry name="Supply Wagon" id="5fe9-1d08-5b75-fa8c" hidden="false"/>
    <categoryEntry name="Healer" id="12e9-c1e9-1b4b-b9d9" hidden="false"/>
    <categoryEntry name="Cataphracts" id="9106-4ef0-0942-8c50" hidden="false"/>
    <categoryEntry name="Kataphraktoi" id="bcab-8d6c-324c-2c1d" hidden="false"/>
    <categoryEntry name="CHIEFCON" id="d936-c270-e692-1054" hidden="true">
      <comment>for chieftain limit</comment>
    </categoryEntry>
    <categoryEntry name="Bők" id="a638-5e21-8172-d006" hidden="false"/>
  </categoryEntries>
  <costTypes>
    <costType name="Gold Pieces" id="4163-7d26-88e5-be23" defaultCostLimit="-1"/>
  </costTypes>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup name="Talents" id="6670-296f-4e21-c004" hidden="false" collapsible="true">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="War of Fire" hidden="false" id="266a-f39d-5e91-7ed7">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4b7d-90e1-043c-15a1" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="War of Fire" id="7d12-8343-66e4-8ea1" hidden="false">
              <description>Your figures get a +1 bonus to their fire rolls.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Magic Sword" hidden="true" id="177f-a2d3-387c-8877">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="90d2-c0c7-2f7b-9e2e" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Magic Sword" id="3abc-fce6-471c-f653" hidden="false">
              <description>A chieftain equipped with a magic sword can re-roll failed defence rolls.</description>
            </rule>
          </rules>
          <comment>Add cost of hand weapon</comment>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Dog Trainer" hidden="true" id="7229-a0c1-30a9-32a8">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="9ec1-a592-4404-089a" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="0"/>
          </costs>
          <modifiers>
            <modifier type="increment" value="10" field="4163-7d26-88e5-be23">
              <repeats>
                <repeat value="1" repeats="1" field="selections" scope="roster" childId="4967-c713-22c5-2fb3" shared="true" roundUp="false" includeChildSelections="true" includeChildForces="true" childName="Pack Master"/>
              </repeats>
            </modifier>
            <modifier type="set" value="false" field="hidden">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
              </conditions>
            </modifier>
          </modifiers>
          <rules>
            <rule name="Dog Trainer" id="909b-049f-ad13-8556" hidden="false">
              <description>Your pack masters each have 4 dogs rather than 3.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Force of Nature" hidden="false" id="f845-186e-c361-9989">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="8a5b-d806-85f0-8de1" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Force of Nature" id="f6a3-0030-9bf9-0a95" hidden="false">
              <description>Your Chieftain gets one additional hit point, and so goes from 3 to 4 hit points.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Grand Marshal of Horses" hidden="false" id="7209-ac6b-105f-c89f">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="c274-1955-45c0-0fb9" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Grand Marshal of Horses" id="f30e-c216-e389-494f" hidden="false">
              <description>Your cavalry figures get no movement penalty for crossing passable obstacles, and get a +1 bonus to their rolls to cross obstacles. 


This means that in this specific situation, your cavalry figures can never fall.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hunter" hidden="false" id="d73b-61d0-330b-3587">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="f31a-43f7-1abe-da6c" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Hunter" id="a6bc-8fac-0a74-cdc4" hidden="false">
              <description>Difficult terrain becomes normal terrain for infantry, and only reduces cavalry movement by half (instead of three quarters).</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Contubernium! " hidden="true" id="be82-774b-856e-44b8">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="c2c9-306f-2897-a8be" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Contubernium!" id="f94d-9eaa-0325-879c" hidden="false">
              <description>At the start of your movement phase, your chieftain can order a maneuver: up to 3 Roman figures (i.e. not foederati allies) within 6” of the Chieftain can move up to 3”. 


This move is free and can’t be used to charge. Figures moved this way can resolve their own Movement Phase normally.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Lewd Provocations" hidden="false" id="8980-e8f9-646c-7ef0">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="1c8c-8379-926e-3d18" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
          <rules>
            <rule name="Lewd Provocations" id="4474-0c82-0e82-a68e" hidden="false">
              <description>During the first melee of the game, your opponent gets a -1 penalty to all their rolls to hit.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Marksmanship Training" hidden="false" id="fd53-4e55-0d62-bbdf">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4ccb-9639-e2e9-c9ff" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Marksmanship Training" id="80c7-c2f3-c3ed-03b1" hidden="false">
              <description>From now on, your ranged weapons increase their ranges by +2”.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Master of Evasion" hidden="true" id="d227-b2c0-38d6-fb85">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d43a-a428-be32-6910" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Master of Evasion" id="3972-3cd3-6f34-8908" hidden="false">
              <description>All your infantry figures get +1 to their rolls to flee. That means their flee rolls now succeeds on a result of 3, 4, 5, or 6.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="cc4f-5e18-b7f5-77af" shared="true" childName="IRISH, SCOTS, AND PICTS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Loyal to the Emperor" hidden="true" id="a758-1832-0db1-743c">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="521d-2e96-43d8-dda2" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="25"/>
          </costs>
          <rules>
            <rule name="Loyal to the Emperor" id="8de8-3225-6144-8b41" hidden="false">
              <description>Rus’ and Varangian warriors were often employed by the emperor in Constantinople. Your army is therefore part of the emperor’s Varangian Guard.


You don’t need to make a morale check when your chieftain leaves the battlefield.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="ab83-8e50-505f-83ed" shared="true" childName="RUS’ AND VARANGIANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Master Stalker" hidden="true" id="de71-c3a5-dd1c-741b">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="ed09-d184-95c3-c2bf" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Master Stalker" id="4c00-4d8d-e264-8e8c" hidden="false">
              <description>Flee rolls by your cavalry figures succeed on a 3+ instead of a 4+.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1059-60d7-841a-8c03" shared="true" childName="BRETONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Mead Merchant" hidden="false" id="fa00-123c-2a78-2f02">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4552-06ab-cc1d-ce4d" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Mead Merchant" id="efd2-e0f9-776f-ed39" hidden="false">
              <description>All your figures add +1” to their charge movement rolls (normal move +1d3” +1”).</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Molesight" hidden="false" id="130d-92fd-d74d-acff">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d8e9-d50c-9c23-d538" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Molesight" id="d7a7-7fbf-9fe4-6e7e" hidden="false">
              <description>When your chieftain makes a search roll, it automatically succeeds.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Odin’s Sight" hidden="true" id="238f-fa16-7de8-fedd">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="edf5-6647-c12f-31d7" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
          <rules>
            <rule name="Odin’s Sight" id="fc23-742e-1bcf-822a" hidden="false">
              <description>Your chieftain doesn’t need line of sight to charge an enemy.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="10c5-139d-8f93-83fe" shared="true" childName="VIKINGS (NORSE)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Bearer of the Holy Grail" hidden="true" id="a2fe-da1f-7f8e-8e80">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4a5d-0044-f3ce-5709" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Bearer of the Holy Grail" id="b3a8-cd67-2a82-d24c" hidden="false">
              <description>Once per game, your chieftain can drink from the chalice at the start of the turn (before the Initiative Phase). They can’t take any damage for the rest of the turn. In addition, you get a +1 bonus to your initiative rolls for the rest of the game (while your chieftain still lives).</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Relic Bearer" hidden="true" id="8e80-8370-3ac9-59b9">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="97ad-5737-edf3-9b54" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="60"/>
          </costs>
          <rules>
            <rule name="Relic Bearer" id="2253-996b-f7e3-e164" hidden="false">
              <description>Friendly figures within 6” of your chieftain (including your chieftain) can re-roll their failed to hit rolls in melee.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Shield Training" hidden="false" id="7e0d-9d10-859f-65e7">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d8e3-5b16-8d00-7a53" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Shield Training" id="5fef-5fd9-dcbb-97b2" hidden="false">
              <description>Shieldwalls need one fewer figures to be or to remain formed (so 4 figures instead of 5).</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Slayer of Pagans" hidden="true" id="e2a4-b783-7b1c-5af8">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="7734-b2a1-fda2-7a16" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Slayer of Pagans" id="177a-5901-7c20-e224" hidden="false">
              <description>Your chieftain gets a +1 bonus to its rolls to hit Vikings (and only Vikings).</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="134c-ea18-3a64-39b6" shared="true" childName="CAROLINGIAN FRANKS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Foederati" hidden="true" id="9ae6-be6d-5d87-35d0">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="25ec-bc13-928d-a934" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="60"/>
          </costs>
          <rules>
            <rule name="Foederati" id="1cb3-9e60-c6ed-10c0" hidden="false">
              <description>Choose another faction to become your ally. You can recruit its troops (and their equipment), but your chieftain(s) must still be Romans.


All the allied faction’s special rules apply to the allied figures in your army.</description>
            </rule>
          </rules>
          <comment>faction ally</comment>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Thegn" hidden="true" id="8065-b18b-e169-2705">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="afe6-de91-43a9-9ab4" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="15"/>
          </costs>
          <rules>
            <rule name="Thegn" id="712b-90f1-a114-5489" hidden="false">
              <description>Choose a figure in your army to become your chieftain’s thegn. 
They can have any armour class.


The first wound your chieftain takes is cancelled if the thegn is within 2” of them.


The thegn warns your chieftain of the danger, letting them dodge the blow as it falls.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="f221-00fb-187b-5ab9" shared="true" childName="ANGLO-SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Warhorses" hidden="true" id="f6d5-3da6-b21f-1827">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="33bf-1f07-b7f7-407d" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Warhorses" id="2e08-1454-ff93-d420" hidden="false">
              <description>Your warhorses have an armour class of SA, rather than the usual UA.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="71f5-5253-f27e-8876" shared="true" childName="NORMANS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Steppe Mobility" hidden="true" id="353a-edb6-b78c-fc19">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="c634-b0fb-ac12-3466" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Steppe Mobility" id="7333-d43f-102f-c013" hidden="false">
              <description>All your cavalry figures increase their movement range by +2”, and automatically cross obstacles successfully.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Athletic Training" hidden="false" id="169f-c4e5-f7c6-3551">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="8e00-b9dc-af60-73cb" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Athletic Training" id="a625-c191-300f-7a2f" hidden="false">
              <description>Your infantry figures ignore the movement penalties for passable obstacles, and can charge across them.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Scramaseax" hidden="true" id="f3eb-4b6d-b6f9-c693">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d3c7-c58f-369a-a809" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="80"/>
          </costs>
          <rules>
            <rule name="Scramaseax" id="f149-50ba-e9a7-0778" hidden="false">
              <description>Each of your warriors has a scramaseax as their improvised weapon. When one of your figures fights with an improvised weapon, it can re-roll its failed rolls to hit.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="The Legion Wall" hidden="true" id="1b84-5ba4-62f6-522e">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="97cd-86b1-fc0a-28f3" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="The Legion Wall" id="32cb-8001-59f3-c6c1" hidden="false">
              <description>When you form a shieldwall, your defence rolls are increased by +2 instead of the usual +1 bonus.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Cornu" hidden="true" id="6522-fccc-9da7-2906">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="ccf9-a079-8c71-3a62" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Cornu" id="f1d3-9250-b766-cf7d" hidden="false">
              <description>Your warhorns are replaced with cornua, which follow all the rules for warhorns. In addition, figures within 6” of a friendly cornu get a +1 bonus to their Fleeing rolls.


Finally, all friendly figures within 6” of a cornu’s bearer move an extra 2” when Fleeing.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="feb9-5636-4b61-e263" shared="true" childName="ROMANS (WESTERN AND EASTERN)"/>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Shield Bash" hidden="true" id="4e23-774c-1364-a924">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="baff-4e15-dc8c-8582" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="80"/>
          </costs>
          <rules>
            <rule name="Shield Bash" id="500b-9bac-2b72-f934" hidden="false">
              <description>While engaged in melee, warriors equipped with a shield can use it make an improvised weapon attack in addition to their usual attacks.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="fe4a-6852-b9e2-f300" shared="true" childName="SAXONS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Backhander" hidden="true" id="9cbc-18ff-87d8-56ac">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="317d-8bf2-adbf-76d3" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Backhander" id="24a1-324d-8f04-3c12" hidden="false">
              <description>Before the battle, after the troops are deployed, the Byzantine player chooses an enemy warrior (not a special character, and without special equipment) and rolls 1d6. 


On a 4+ that warrior joins their army, and they can place the figure anywhere in their own deployment zone.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="bbc6-7eda-f613-00dd" shared="true" childName="BYZANTINES"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Palatine Guard" hidden="true" id="3155-75e5-9206-39fb">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="24dd-78cf-ddad-fee5" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Palatine Guard" id="fdb7-7d1a-d8a6-9ba4" hidden="false">
              <description>When a Merovingian chieftain is wounded, he can choose to assign the hit to any other allied figure in base contact with him.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="56c4-377c-431b-ea69" shared="true" childName="MEROVINGIAN FRANKS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="King of Ambushes" hidden="false" id="02ef-52bb-165a-3543">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="1cdd-9966-8867-7989" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="King of Ambushes" id="1426-4e31-d58b-b224" hidden="false">
              <description>You can hide up to 25% (rounding up) of your figures “in ambush”. Special characters or special equipment cannot be ambushed.


Before deployment, note on a piece of paper – away from prying eyes – the spot where all your ambushing troops are hiding. It is impossible to hide troops in the opponent’s deployment zone(s).


You can choose to make your troops emerge during a movement phase. Show your enemy the spot in question, and show them the paper confirmation, then place your figures in base-to-base contact with their hiding spot.


They can move or charge normally. All your figures must emerge at the same time.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Poison Specialist " hidden="false" id="4db4-027b-99d7-91bc">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="b4a5-8fd9-01de-773a" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Poison Specialist " id="da50-8ca8-5a63-b779" hidden="false">
              <description>Single use. At the start of the game, roll 1d6. 


On a result of 1 or 2, nothing happens. 


On a 3 or 4, the enemy chieftain is stunned, and can’t take any actions until the second turn of the game. 


On a 5 or 6, the enemy chieftain loses 1 hit point. If the enemy force contains several chieftains, declare your target before rolling.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Scout" hidden="true" id="6d60-e67d-3537-7693">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="3041-fb57-fe0a-b97f" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="20"/>
          </costs>
          <rules>
            <rule name="Scout" id="5a1e-5a83-8c34-3f3b" hidden="false">
              <description>After both armies have deployed, choose a figure from among your troops to be your scout. You can deploy it anywhere on the battlefield more than 15” away from an enemy deployment area.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="1643-b8f8-d7ff-fd24" shared="true" childName="HUNS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Equites Dumnonii" hidden="true" id="5aeb-2e9e-72f6-eebd">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="4ef9-38ae-fe26-8e46" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Equites Dumnonii" id="ce7f-4fb0-2d0c-d9bf" hidden="false">
              <description>When a Romano-British cavalry figure charges from at least 6” away, it gets a +1 bonus to its roll to hit during the turn in which it charges.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="d43c-1887-72d3-f957" shared="true" childName="ROMANO-BRITISH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Arian Zealots" hidden="true" id="46fe-b11c-6396-c78c">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="459d-0b88-5f55-62b3" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="30"/>
          </costs>
          <rules>
            <rule name="Arian Zealots" id="3953-4dba-018e-1ab1" hidden="false">
              <description>When a Visigoth figure charges a non-Visigoth figure, it can choose to re-roll its charge roll if it doesn’t like the result.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="18a2-ccba-60ed-3332" shared="true" childName="VISIGOTHS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="War Cry" hidden="true" id="67bb-cbaa-7624-8a75">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="86ae-8d99-2391-b099" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="War Cry" id="ceb2-84ce-eaeb-a696" hidden="false">
              <description>Single use – At the start of the melee phase, all Picts gain a +1 bonus to their rolls to hit, but take a -1 penalty to their defence rolls.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2159-64d0-353d-3870" shared="true" childName="PICTS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Master of the Long Knife" hidden="true" id="028b-cef4-926b-27f2">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="8f70-823a-03a6-58e2" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="40"/>
          </costs>
          <rules>
            <rule name="Master of the Long Knife" id="221c-3a92-3348-3e21" hidden="false">
              <description>When they charge into an enemy, all your infantry warriors can make an additional improvised weapon attack.


This attack is in addition to the one(s) made with their main weapon, but without the charge bonus. The enemy can make a defence roll against this attack as normal.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="459c-c87d-e25f-2e45" shared="true" childName="WELSH"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Swift As Lightning" hidden="false" id="5a7f-6d8f-5399-d04a">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="9f93-69d9-1dda-b59a" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Swift As Lightning" id="9d94-478b-0b86-a75d" hidden="false">
              <description>Your chieftain grants a +1 bonus to your initiative rolls.</description>
            </rule>
          </rules>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Spare Horses" hidden="true" id="f6d1-5a85-7395-f3d0">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="f98f-650a-17ef-a7af" includeChildSelections="true"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
          <rules>
            <rule name="Spare Horses" id="4aa0-70d5-2cf3-b504" hidden="false">
              <description>Any Magyar rider who loses their horse can get a new one. At the start of its movement phase, a Magyar cavalry figure that has become an infantry figure in the previous turn can roll 1d6. 


On a 6, it finds a new horse and becomes a cavalry figure once more: replace the figure. 


The cavalry figure can’t move this turn. If the roll is a failure, the figure can move as normal but remains an infantry figure for the rest of the game.</description>
            </rule>
          </rules>
          <modifiers>
            <modifier type="set" value="false" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="2663-865d-3ec5-cfde" shared="true" childName="MAGYARS"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
      <constraints>
        <constraint type="max" value="2" field="selections" scope="parent" shared="true" id="92bd-c520-6883-8536" includeChildSelections="false"/>
      </constraints>
    </selectionEntryGroup>
    <selectionEntryGroup name="Melee Weapons" id="b636-d073-f157-2912" hidden="false" sortIndex="1" collapsible="true">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Improvised Weapon" hidden="false" id="2fef-ac13-0216-9c7e" sortIndex="1">
          <profiles>
            <profile name="Improvised Weapon" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="d291-2cb9-0448-7db0">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">5+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">6+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">6+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="Re-roll its failed rolls to hit." field="c8e2-d135-1e5f-04c6">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="f3eb-4b6d-b6f9-c693" shared="true" childName="Scramaseax" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="80db-cf82-8f07-f153" includeChildSelections="false"/>
            <constraint type="min" value="0" field="selections" scope="parent" shared="true" id="6230-c551-2da8-0b6f" automatic="true"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="1" field="6230-c551-2da8-0b6f">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="parent" childId="12e9-c1e9-1b4b-b9d9" shared="true" childName="Healer"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Scramaseax" field="name">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="roster" childId="f3eb-4b6d-b6f9-c693" shared="true" childName="Scramaseax" includeChildSelections="true" includeChildForces="true"/>
              </conditions>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Spear" hidden="false" id="9baa-d681-954c-2534" sortIndex="2">
          <profiles>
            <profile name="Spear" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="4b2d-71a8-f94a-bab4">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">4+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">5+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">5+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">-</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="3be1-c793-33a1-6b49" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hand Weapon" hidden="false" id="03f9-3c25-1bff-a4ef" sortIndex="3">
          <profiles>
            <profile name="Hand Weapon" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="9eeb-066a-deaf-d706">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">3+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">4+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">4+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">-</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2c30-f28d-12a2-870f" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Dane Axe" hidden="false" id="8334-ccc2-7566-7812" sortIndex="4">
          <profiles>
            <profile name="Dane Axe" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="76a9-3202-cd10-6c5d">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">2+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">3+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">3+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">The Dane Axe inflicts a -1 penalty to the target’s defence roll. You strike last with a Dane Axe.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="4501-1b1f-9fd2-f1c3" includeChildSelections="false"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="0b19-ecf2-aeb7-6a63" shared="true" childName="Banner" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="ef59-7677-afdd-3f24" shared="true" childName="Warhorn" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="15"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Bare hands" hidden="false" id="c5dd-c2b5-9c80-90f0" sortIndex="-1">
          <profiles>
            <profile name="Bare hands" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="4a70-6f46-7ed7-b18d">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">8+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">9+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">9+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">-</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="d70c-3153-60ca-892a" includeChildSelections="false" automatic="true"/>
          </constraints>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Hasta" hidden="true" id="cf44-a98d-2ce5-a714" sortIndex="5">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="85fa-e7dd-5cfe-ce01" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Hasta" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="b756-117c-9f35-0a59">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">4+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">5+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">5+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">Can be used as a Javelin in the shooting phase.</characteristic>
              </characteristics>
            </profile>
            <profile name="Javelin" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="a215-f6a1-bebf-f528">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">6&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">5+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="8&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <comment>ranged</comment>
          <categoryLinks>
            <categoryLink name="Ranged Weapon" hidden="false" id="a698-254a-88d1-3e89" targetId="163f-1820-848c-271d" primary="false"/>
          </categoryLinks>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Kontos" hidden="true" id="4585-2b14-c647-6d4d" sortIndex="6">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2857-1a21-329c-c12e" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Kontos" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="0fdb-feab-ebbd-d581">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">3+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">4+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">4+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">A cavalryman charging with a kontos inflicts a -1 penalty on their target’s defence roll.</characteristic>
              </characteristics>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Lasso" hidden="true" id="9c88-7bbe-a35a-5909" sortIndex="7">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="e063-56da-74ce-b3e5" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Lasso" typeId="8b28-1caf-8b57-014c" typeName="Melee Weapon" hidden="false" id="8ec9-49ee-a984-bac9">
              <characteristics>
                <characteristic name="UA" typeId="984d-e6d1-a3dd-d52e">6+</characteristic>
                <characteristic name="SA" typeId="24af-bc22-9d7a-7846">6+</characteristic>
                <characteristic name="FA" typeId="b570-92f0-a14a-f39b">6+</characteristic>
                <characteristic name="Special" typeId="c8e2-d135-1e5f-04c6">If you hit, cancel the enemy attack.

Lassos can only be used by mounted figures. A cavalry figure who starts fighting on foot can no longer use its lasso.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <comment>special</comment>
        </selectionEntry>
      </selectionEntries>
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="a56c-fc29-afec-b6d6" includeChildSelections="false"/>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="f112-2730-8551-011f" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="-1" field="a56c-fc29-afec-b6d6">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="parent" childId="a9b5-1198-781f-a9d1" shared="true" childName="Huscarl"/>
                <condition type="instanceOf" value="1" field="selections" scope="parent" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
    </selectionEntryGroup>
    <selectionEntryGroup name="Ranged Weapons" id="1a12-5d72-5bb7-034c" hidden="false" sortIndex="2" collapsible="true">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Sling" hidden="false" id="7d94-a1f1-3625-a86b" sortIndex="2">
          <profiles>
            <profile name="Sling" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="2a9a-97de-0d8b-ad9d">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">15&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">6+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">6+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">6+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="17&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="d717-8f8a-6b0a-dcc1" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Crossbow" hidden="true" id="300f-ce66-63c2-3be1" sortIndex="4">
          <profiles>
            <profile name="Crossbow" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="1af3-0fad-62a7-5702">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">20&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">All</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">3+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">4+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">4+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">A crossbow shot inflicts a -1 penalty to the opponent’s defence roll.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="22&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2783-42f8-13d9-8aaa" includeChildSelections="false"/>
          </constraints>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Javelin" hidden="false" id="7548-ff61-69e9-5fd8" sortIndex="1">
          <profiles>
            <profile name="Javelin" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="b42c-0961-0984-8f0d">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">6&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">5+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="8&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="a1dd-76a6-41cc-bdaf" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Bow" hidden="false" id="698f-3316-7448-aed2" sortIndex="3">
          <profiles>
            <profile name="Bow" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="c274-d138-790f-acf6">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">20&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">Half</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">5+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">-</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="22&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="e66a-0090-6104-6551" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="20"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Plumbata" hidden="true" id="55e5-2ee4-445e-359a" sortIndex="7">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="5537-1345-37e4-29c2" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Plumbata" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="bd2e-2a3b-7d99-0b0c">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">8&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">5+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">6+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">6+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">Can only be used via Closing shots. it is not affected by the -1 to hit for either penalty associated with closing shots or long range.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="10&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Angon" hidden="true" id="8ecd-c984-33f9-e6d6" sortIndex="5">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="07b4-d74c-b49d-f37e" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Angon" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="e246-8cd9-faac-46ad">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">6&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+*</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">4+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">*If the target has a shield, the Angon hits on a 4+.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="8&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Francisca" hidden="true" id="4c5c-fc8c-d2d7-468b" sortIndex="6">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="44bc-589a-f4c4-8ec0" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Francisca" typeId="a82a-8570-e498-e2de" typeName="Ranged Weapon" hidden="false" id="fb42-33f2-0319-a5a4">
              <characteristics>
                <characteristic name="Range" typeId="9775-d55d-f35e-0a05">6&quot;</characteristic>
                <characteristic name="Movement Penalty" typeId="7a1b-b6a8-befc-1710">None</characteristic>
                <characteristic name="UA" typeId="a80d-86be-21e3-b0d3">4+</characteristic>
                <characteristic name="SA" typeId="e00a-0744-8ff9-bf35">5+</characteristic>
                <characteristic name="FA" typeId="48bc-033e-f508-5a9b">5+</characteristic>
                <characteristic name="Special" typeId="705d-1814-ed63-1c1a">Can only be used after declaring a charge.
-1 penalty on the target’s defence roll.</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="8&quot;" field="9775-d55d-f35e-0a05">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="fd53-4e55-0d62-bbdf" shared="true" childName="Marksmanship Training" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
        </selectionEntry>
      </selectionEntries>
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="de8e-e641-c1ab-ad1a" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="true" field="hidden">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="parent" childId="8a90-9bee-5758-3283" shared="true" childName=" Berserker"/>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="0b19-ecf2-aeb7-6a63" shared="true" childName="Banner" includeChildSelections="true"/>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="ef59-7677-afdd-3f24" shared="true" childName="Warhorn" includeChildSelections="true"/>
                <condition type="equalTo" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
                <condition type="equalTo" value="2" field="selections" scope="parent" childId="03f9-3c25-1bff-a4ef" shared="true" childName="Hand Weapon" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
    </selectionEntryGroup>
    <selectionEntryGroup name="Special Equipment" id="45d7-2019-f71e-4c8f" hidden="false" sortIndex="3" collapsible="true">
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Warhounds" hidden="true" id="aebe-2db7-ada2-bd68">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="8452-fcd4-2ebd-8d84" includeChildSelections="false"/>
          </constraints>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="60"/>
          </costs>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="primary-catalogue" childId="10c5-139d-8f93-83fe" shared="true" childName="VIKINGS (NORSE)"/>
              </conditions>
            </modifier>
          </modifiers>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Banner" hidden="true" id="0b19-ecf2-aeb7-6a63">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="5fd3-b60c-8029-dd67" includeChildSelections="true"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="50"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="upgrade" import="true" name="Warhorn" hidden="true" id="6684-efaf-9504-40c1">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="d68b-c3d9-715c-abcc" includeChildSelections="true"/>
          </constraints>
          <modifiers>
            <modifier type="set" value="true" field="hidden">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </modifier>
          </modifiers>
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="10"/>
          </costs>
        </selectionEntry>
        <selectionEntry type="model" import="true" name="Horse" hidden="true" id="4c37-ffb6-cffc-4e32" subType="mount">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="2599-5714-0198-9d98" includeChildSelections="false"/>
          </constraints>
          <profiles>
            <profile name="Horse" typeId="3d83-c900-0de7-bd4c" typeName="Model" hidden="false" id="bd48-a4f2-3bd6-7d9c">
              <characteristics>
                <characteristic name="Armour Class" typeId="77f6-a713-5232-623d">UA: 6+</characteristic>
                <characteristic name="HP" typeId="8568-7376-bcc1-2a56">1</characteristic>
                <characteristic name="Movement" typeId="b5b3-773d-1e7a-74a0">14</characteristic>
              </characteristics>
              <modifiers>
                <modifier type="set" value="SA: 5+" field="77f6-a713-5232-623d">
                  <conditionGroups>
                    <conditionGroup type="count" min="1">
                      <conditions>
                        <condition type="atLeast" value="1" field="selections" scope="roster" childId="f6d5-3da6-b21f-1827" shared="true" childName="Warhorses" includeChildSelections="true" includeChildForces="true"/>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="9106-4ef0-0942-8c50" shared="true" childName="Cataphracts" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
                <modifier type="append" value="&quot;" field="b5b3-773d-1e7a-74a0"/>
                <modifier type="increment" value="2" field="b5b3-773d-1e7a-74a0">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="roster" childId="353a-edb6-b78c-fc19" shared="true" childName="Steppe Mobility" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </modifier>
                <modifier type="set" value="FA: 4+" field="77f6-a713-5232-623d">
                  <conditionGroups>
                    <conditionGroup type="count" min="1">
                      <conditions>
                        <condition type="instanceOf" value="1" field="selections" scope="parent" childId="bcab-8d6c-324c-2c1d" shared="true" childName="Kataphraktoi" includeChildSelections="true"/>
                      </conditions>
                    </conditionGroup>
                  </conditionGroups>
                </modifier>
              </modifiers>
            </profile>
          </profiles>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <profileTypes>
    <profileType name="Model" id="3d83-c900-0de7-bd4c" hidden="false" kind="model" sortIndex="1">
      <characteristicTypes>
        <characteristicType name="Armour Class" id="77f6-a713-5232-623d" defaultValue="UA: 6+"/>
        <characteristicType name="HP" id="8568-7376-bcc1-2a56" defaultValue="1"/>
        <characteristicType name="Movement" id="b5b3-773d-1e7a-74a0" defaultValue="8&quot;"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ranged Weapon" id="a82a-8570-e498-e2de" hidden="false" kind="weapon" sortIndex="3">
      <characteristicTypes>
        <characteristicType name="Range" id="9775-d55d-f35e-0a05"/>
        <characteristicType name="Movement Penalty" id="7a1b-b6a8-befc-1710" defaultValue="None"/>
        <characteristicType name="UA" id="a80d-86be-21e3-b0d3"/>
        <characteristicType name="SA" id="e00a-0744-8ff9-bf35"/>
        <characteristicType name="FA" id="48bc-033e-f508-5a9b"/>
        <characteristicType name="Special" id="705d-1814-ed63-1c1a" defaultValue="-"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Melee Weapon" id="8b28-1caf-8b57-014c" hidden="false" kind="weapon" sortIndex="2">
      <characteristicTypes>
        <characteristicType name="UA" id="984d-e6d1-a3dd-d52e"/>
        <characteristicType name="SA" id="24af-bc22-9d7a-7846"/>
        <characteristicType name="FA" id="b570-92f0-a14a-f39b"/>
        <characteristicType name="Special" id="c8e2-d135-1e5f-04c6" defaultValue="-"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <sharedProfiles>
    <profile name="New Profile" typeId="3d83-c900-0de7-bd4c" typeName="Model" hidden="false" id="4cd2-c74b-3af2-8d2e">
      <characteristics>
        <characteristic name="Armour Class" typeId="77f6-a713-5232-623d">UA: 6+</characteristic>
        <characteristic name="HP" typeId="8568-7376-bcc1-2a56">1</characteristic>
        <characteristic name="Movement" typeId="b5b3-773d-1e7a-74a0">8&quot;</characteristic>
      </characteristics>
      <modifierGroups>
        <modifierGroup type="and">
          <comment>Armour</comment>
          <modifiers>
            <modifier type="set" value="FA: 4+" field="77f6-a713-5232-623d">
              <conditionGroups>
                <conditionGroup type="count" min="2" max="2">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="2503-f075-b4f3-a83c" shared="true" childName="Armour" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
            <modifier type="set" value="SA: 5+" field="77f6-a713-5232-623d">
              <conditionGroups>
                <conditionGroup type="count" min="1" max="1">
                  <conditions>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="2503-f075-b4f3-a83c" shared="true" childName="Armour" includeChildSelections="true"/>
                    <condition type="equalTo" value="1" field="selections" scope="parent" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </modifierGroup>
        <modifierGroup type="and">
          <comment>HP</comment>
          <modifiers>
            <modifier type="set" value="2" field="8568-7376-bcc1-2a56">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="8a90-9bee-5758-3283" shared="true" childName=" Berserker"/>
              </conditions>
            </modifier>
            <modifier type="set" value="3" field="8568-7376-bcc1-2a56">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
              </conditions>
            </modifier>
            <modifier type="set" value="4" field="8568-7376-bcc1-2a56">
              <conditionGroups>
                <conditionGroup type="and">
                  <conditions>
                    <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
                    <condition type="atLeast" value="1" field="selections" scope="parent" childId="f845-186e-c361-9989" shared="true" childName="Force of Nature" includeChildSelections="true" includeChildForces="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </modifierGroup>
        <modifierGroup type="and">
          <comment>Name</comment>
          <modifiers>
            <modifier type="set" value="Chieftain" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="beac-c21e-5fb5-9ec0" shared="true" childName="Chieftain"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Bők" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="a638-5e21-8172-d006" shared="true" childName="Bők"/>
              </conditions>
            </modifier>
            <modifier type="set" value="Warrior" field="name">
              <conditions>
                <condition type="instanceOf" value="1" field="selections" scope="ancestor" childId="fbfe-2e24-1e84-8984" shared="true" childName="Warrior"/>
              </conditions>
            </modifier>
          </modifiers>
        </modifierGroup>
      </modifierGroups>
    </profile>
  </sharedProfiles>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Shield" hidden="false" id="823a-1dfd-e85b-a645" sortIndex="-1">
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="b9e0-e747-6176-5071" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="true" field="hidden">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="equalTo" value="2" field="selections" scope="parent" childId="03f9-3c25-1bff-a4ef" shared="true" childName="Hand Weapon" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="add" value="Cannot use a Shield and Dane Axe in Melee, only one or the other. " field="info">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="823a-1dfd-e85b-a645" shared="true" childName="Shield" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="parent" childId="8334-ccc2-7566-7812" shared="true" childName="Dane Axe" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <costs>
        <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
      </costs>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="Armour" hidden="false" id="2503-f075-b4f3-a83c" sortIndex="-1">
      <constraints>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="286a-be3b-d4c3-3591" includeChildSelections="false"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="true" field="hidden">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="parent" childId="aebe-2db7-ada2-bd68" shared="true" childName="Warhounds" includeChildSelections="true"/>
          </conditions>
        </modifier>
      </modifiers>
      <costs>
        <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
      </costs>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Wagons" hidden="true" id="a5e8-b14b-1d77-5bf5" sortIndex="9">
      <categoryLinks>
        <categoryLink name="CHIEFCON" hidden="false" id="35c7-6259-8bd0-7f17" targetId="d936-c270-e692-1054" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Wagon" hidden="false" id="9853-687f-b6a9-faf4"/>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry type="model" import="true" name="Chieftain" hidden="false" id="5b79-2a8a-0ca0-4059" sortIndex="1">
      <entryLinks>
        <entryLink import="true" name="Melee Weapons" hidden="false" id="9c9f-8801-70e8-f863" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
        <entryLink import="true" name="Ranged Weapons" hidden="false" id="8f70-6aaa-d146-422d" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
        <entryLink import="true" name="Special Equipment" hidden="false" id="93d3-302e-8296-0382" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
        <entryLink import="true" name="Talents" hidden="false" id="fefa-4721-9bf3-a5a3" type="selectionEntryGroup" targetId="6670-296f-4e21-c004"/>
        <entryLink import="true" name="Armour" hidden="false" id="2e94-c018-4b0b-8743" type="selectionEntry" targetId="2503-f075-b4f3-a83c">
          <costs>
            <cost name="Gold Pieces" typeId="4163-7d26-88e5-be23" value="5"/>
          </costs>
        </entryLink>
        <entryLink import="true" name="Shield" hidden="false" id="4fb7-09ca-4c67-ff4a" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
      </entryLinks>
      <modifiers>
        <modifier type="add" value="373d-f121-420b-4837" field="category">
          <conditions>
            <condition type="atLeast" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="163f-1820-848c-271d" field="category">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <infoLinks>
        <infoLink name="Chieftain" id="0391-43d5-a387-c085" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Warriors" hidden="false" id="2478-7327-3509-6d5f" sortIndex="3">
      <categoryLinks>
        <categoryLink name="CHIEFCON" hidden="false" id="201e-b8c8-f68c-99e0" targetId="d936-c270-e692-1054" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Warrior" hidden="false" id="5c39-fa7e-e707-3800">
          <entryLinks>
            <entryLink import="true" name="Shield" hidden="false" id="0c5d-0975-315c-7702" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Armour" hidden="false" id="0eea-0008-8bd8-de7d" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="94dd-8122-4358-ad1e" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="67ca-618e-40cc-05e0" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="6e8d-f332-17fd-d5fc" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="236f-a8df-204a-9ac0" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Berserkers" hidden="true" id="aaaf-c8ef-3840-8e3f" sortIndex="4">
      <categoryLinks>
        <categoryLink name="CHIEFCON" hidden="false" id="8569-4b12-e7b0-898d" targetId="d936-c270-e692-1054" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Berserker" hidden="false" id="0579-10d1-5d15-4eab">
          <entryLinks>
            <entryLink import="true" name="Armour" hidden="false" id="9155-0d8f-c56c-44a0" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Shield" hidden="false" id="5633-606a-d827-567b" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="a158-3576-b9e4-eebe" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="c53f-2e84-7301-ea89" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="15d8-f0fc-63d3-d403" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="1f67-1da9-0986-08b9" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Huscarls" hidden="true" id="493d-4409-9952-8860" sortIndex="5">
      <categoryLinks>
        <categoryLink name="CHIEFCON" hidden="false" id="69cd-8fda-0d0b-5f44" targetId="d936-c270-e692-1054" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Huscarl" hidden="false" id="49d6-e070-57f5-e692">
          <entryLinks>
            <entryLink import="true" name="Armour" hidden="false" id="8732-e4a0-60fa-21fb" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Shield" hidden="false" id="019a-920e-314d-dd09" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="ddb6-9b0c-2832-02a4" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="2347-658c-ae8b-7fe1" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="ed1e-aef1-1dbb-8834" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="f412-bf5a-d16a-8985" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Healers" hidden="true" id="5abc-f2dd-4427-94a9" sortIndex="8">
      <categoryLinks>
        <categoryLink name="CHIEFCON" hidden="false" id="072a-13b5-83ab-7a71" targetId="d936-c270-e692-1054" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Healer" hidden="false" id="bf8f-d34a-9e6e-5ae5">
          <entryLinks>
            <entryLink import="true" name="Improvised Weapon" hidden="false" id="d3e4-5d34-5e27-4ac2" type="selectionEntry" targetId="2fef-ac13-0216-9c7e"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="3d3c-5200-01a0-7ecb" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry type="model" import="true" name="Bők" hidden="true" id="e5a3-64d9-2534-e409" sortIndex="2">
      <entryLinks>
        <entryLink import="true" name="Armour" hidden="false" id="c4ab-74c3-be34-6d9c" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
        <entryLink import="true" name="Shield" hidden="false" id="09a5-02bc-bec2-5ba3" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
        <entryLink import="true" name="Melee Weapons" hidden="false" id="40ec-6ead-5c4d-7d02" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
        <entryLink import="true" name="Ranged Weapons" hidden="false" id="4b73-5aa1-c141-cc1e" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
        <entryLink import="true" name="Special Equipment" hidden="false" id="614f-68fb-932e-e1ad" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
        <entryLink import="true" name="Talents" hidden="false" id="f3b0-d2d4-10fa-64b9" type="selectionEntryGroup" targetId="6670-296f-4e21-c004"/>
      </entryLinks>
      <modifiers>
        <modifier type="add" value="373d-f121-420b-4837" field="category">
          <conditions>
            <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
          </conditions>
        </modifier>
        <modifier type="add" value="163f-1820-848c-271d" field="category">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <infoLinks>
        <infoLink name="New Profile" id="7cdc-3d28-3754-ff84" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
      </infoLinks>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Kataphraktois" hidden="true" id="99e5-d364-e70b-b37f" sortIndex="7">
      <categoryLinks>
        <categoryLink name="CHIEFCON" hidden="false" id="88e5-e22f-005c-dca7" targetId="d936-c270-e692-1054" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Kataphraktoi" hidden="false" id="94a6-9ee0-c5fc-7642">
          <entryLinks>
            <entryLink import="true" name="Armour" hidden="false" id="b5ea-8fb0-f19b-d19d" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Shield" hidden="false" id="a1cc-c656-9c70-dee7" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="3788-cc60-ad55-77c3" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="5d00-c231-d5ce-594e" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="ab21-7b9a-dc3d-4c80" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="e677-4dc6-9d7b-9b87" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
    <selectionEntry type="unit" import="true" name="Cataphracts" hidden="true" id="3fae-340a-ff4a-27e4" sortIndex="6">
      <categoryLinks>
        <categoryLink name="CHIEFCON" hidden="false" id="2cb5-49c6-1482-3f7a" targetId="d936-c270-e692-1054" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry type="model" import="true" name="Cataphract" hidden="false" id="4c07-8146-72b6-4368">
          <entryLinks>
            <entryLink import="true" name="Armour" hidden="false" id="0cdd-fb73-4e6a-4d99" type="selectionEntry" targetId="2503-f075-b4f3-a83c"/>
            <entryLink import="true" name="Shield" hidden="false" id="c4e7-a720-a259-eec7" type="selectionEntry" targetId="823a-1dfd-e85b-a645"/>
            <entryLink import="true" name="Melee Weapons" hidden="false" id="b812-055c-9275-3aeb" type="selectionEntryGroup" targetId="b636-d073-f157-2912"/>
            <entryLink import="true" name="Ranged Weapons" hidden="false" id="5e38-e6fe-8870-de06" type="selectionEntryGroup" targetId="1a12-5d72-5bb7-034c"/>
            <entryLink import="true" name="Special Equipment" hidden="false" id="23ec-00b9-bbdc-5ee4" type="selectionEntryGroup" targetId="45d7-2019-f71e-4c8f"/>
          </entryLinks>
          <infoLinks>
            <infoLink name="New Profile" id="2fdd-4cb8-e812-e9dc" hidden="false" type="profile" targetId="4cd2-c74b-3af2-8d2e"/>
          </infoLinks>
          <modifiers>
            <modifier type="add" value="373d-f121-420b-4837" field="category">
              <conditions>
                <condition type="equalTo" value="1" field="selections" scope="self" childId="4c37-ffb6-cffc-4e32" shared="true" childName="Horse" includeChildSelections="true"/>
              </conditions>
            </modifier>
            <modifier type="add" value="163f-1820-848c-271d" field="category">
              <conditionGroups>
                <conditionGroup type="or">
                  <conditions>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7548-ff61-69e9-5fd8" shared="true" childName="Javelin" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="7d94-a1f1-3625-a86b" shared="true" childName="Sling" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="698f-3316-7448-aed2" shared="true" childName="Bow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="300f-ce66-63c2-3be1" shared="true" childName="Crossbow" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="8ecd-c984-33f9-e6d6" shared="true" childName="Angon" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="4c5c-fc8c-d2d7-468b" shared="true" childName="Francisca" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="55e5-2ee4-445e-359a" shared="true" childName="Plumbata" includeChildSelections="true"/>
                    <condition type="atLeast" value="1" field="selections" scope="self" childId="cf44-a98d-2ce5-a714" shared="true" childName="Hasta" includeChildSelections="true"/>
                  </conditions>
                </conditionGroup>
              </conditionGroups>
            </modifier>
          </modifiers>
        </selectionEntry>
      </selectionEntries>
    </selectionEntry>
  </sharedSelectionEntries>
</gameSystem>
