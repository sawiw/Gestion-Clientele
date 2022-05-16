<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Commande
 *
 * @ORM\Table(name="commande", indexes={@ORM\Index(name="IDX_6EEAA67DAFF59BF", columns={"numclient"}), @ORM\Index(name="IDX_6EEAA67D3C20CCF3", columns={"refprod"})})
 * @ORM\Entity
 */
class Commande
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="datecommande", type="date", nullable=false, options={"default"="CURRENT_DATE"})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $datecommande = 'CURRENT_DATE';

    /**
     * @var int
     *
     * @ORM\Column(name="qtite", type="integer", nullable=false)
     */
    private $qtite;

    /**
     * @var \Client
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="Client")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="numclient", referencedColumnName="numclient")
     * })
     */
    private $numclient;

    /**
     * @var \Produit
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="Produit")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="refprod", referencedColumnName="refprod")
     * })
     */
    private $refprod;


}
